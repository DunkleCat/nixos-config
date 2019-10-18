{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    flannel
    kail
    kompose
    kontemplate
    kube-prompt
    kube-router
    kubecfg
    kubectl
    kubernetes
    kubeval
    # minikube
  ]

  services.kubernetes = {
    roles = [ "master" "node" ];
    masterAddress = "127.0.0.1";
  };
}
