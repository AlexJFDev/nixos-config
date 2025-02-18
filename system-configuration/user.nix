{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.alexjf = {
    isNormalUser = true;
    description = "Alex Fuhrig";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}