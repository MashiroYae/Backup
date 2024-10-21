{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Asia/Taipei";

  networking.useDHCP = false;

  systemd.network.enable = true;
  systemd.network.networks."10-lan" = {
    matchConfig.Name = "e*";
    networkConfig.DHCP = "ipv4";
  };

  services.resolved.enable = true;

  programs.zsh.enable = true;
  programs.zsh.autosuggestions.enable = true;
  programs.zsh.syntaxHighlighting.enable = true;

  users.users.root.shell = pkgs.zsh;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDHYSeP1RPVpntiEnwsSGkPDS+WBN1pNWmGkq1/zpHonekAYv7QhSvR7IDcySbX0rxlrkIFtF5nooyIIX8ScSzmC38N+WGguFeYvDlO9y3xrcRf3lwkM/kqON5ImKIxuidb4vGIiDBaM4kuUUJPuhUzSBeX3ud2ZsR2H3yvvd+UEMUuQCEio6tVxazFmPKdfy6wkDqsbS3UGHs0upmdvmz1a0TUSPR4QdwmvMMVePOHzKLJtzZFwWeD8zd1HUZXf2TX0FGb1cx91Jj5f1atOwn1e1zgZbr/ffTbe+eXHdTnebEcnxRbNsRSMlC3gTCzxjz8Q4wAzmKms8Spa6M1+x1bX3DB00guKnEOKUq+jlTQdl7OvybdP+LQ7QoCIZXf9J/DnqUCJD40RKquHv3QSs1a2zvql2sxIfbY56MryTKPEGtauTLrP4cjOldBC9yTyQUKXXIJ1IG9xatGK2l1gVAuAfES+uOjWabWVbPPh1cxWBRaj63MWuvm4lbKxKc0zXaugCjP1c47eeZ6Ifz2pGGNcgRrMXzLv8bj7oM/l4AWBHX1nx3oIfTytCTMhV0fD1ZZOoPHanoeN/hg1OIwEkfIiw0xuItxYGbkJf/1Q4wOZ217LwbY4c1J3/qk/Yrrk5FSgGVxm4kaNg//0e3RQdmOkYhZC41dlWNKuZcEj3HYIw== mashiro@mashiro"
  ];

  users.users.mashiro = {
    isNormalUser = true;
    home = "/Users/mashiro";
    extraGroups = [ "wheel" ];
    createHome = true;
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDHYSeP1RPVpntiEnwsSGkPDS+WBN1pNWmGkq1/zpHonekAYv7QhSvR7IDcySbX0rxlrkIFtF5nooyIIX8ScSzmC38N+WGguFeYvDlO9y3xrcRf3lwkM/kqON5ImKIxuidb4vGIiDBaM4kuUUJPuhUzSBeX3ud2ZsR2H3yvvd+UEMUuQCEio6tVxazFmPKdfy6wkDqsbS3UGHs0upmdvmz1a0TUSPR4QdwmvMMVePOHzKLJtzZFwWeD8zd1HUZXf2TX0FGb1cx91Jj5f1atOwn1e1zgZbr/ffTbe+eXHdTnebEcnxRbNsRSMlC3gTCzxjz8Q4wAzmKms8Spa6M1+x1bX3DB00guKnEOKUq+jlTQdl7OvybdP+LQ7QoCIZXf9J/DnqUCJD40RKquHv3QSs1a2zvql2sxIfbY56MryTKPEGtauTLrP4cjOldBC9yTyQUKXXIJ1IG9xatGK2l1gVAuAfES+uOjWabWVbPPh1cxWBRaj63MWuvm4lbKxKc0zXaugCjP1c47eeZ6Ifz2pGGNcgRrMXzLv8bj7oM/l4AWBHX1nx3oIfTytCTMhV0fD1ZZOoPHanoeN/hg1OIwEkfIiw0xuItxYGbkJf/1Q4wOZ217LwbY4c1J3/qk/Yrrk5FSgGVxm4kaNg//0e3RQdmOkYhZC41dlWNKuZcEj3HYIw== mashiro@mashiro"
  ];
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
    }))
  ];
  services.emacs.package = pkgs.emacs-unstable;

  environment.systemPackages = with pkgs; [
    git
    tmux
    wget
    bat
    htop
    curl
  ];

  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "yes";
  };
}
