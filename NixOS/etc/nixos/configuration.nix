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

  users.users.mashiro = {
    isNormalUser = true;
    home = "/Users/mashiro";
    extraGroups = [ "wheel" ];
  };


  environment.systemPackages = with pkgs; [
    git
    wget
    zsh
  ];

  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "yes";
  };

  users.users.root.openssh.authorizedKeys.keys = [
    "mashiro@mashiro"
  ];
}
