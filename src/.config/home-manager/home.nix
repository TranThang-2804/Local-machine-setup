{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "thangtd18ngt";
  home.homeDirectory = "/home/thangtd18ngt";

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home.packages = [
    pkgs.git
    pkgs.awscli
    pkgs.curl
    pkgs.tmux
    pkgs.zsh
    pkgs.wl-clipboard
    pkgs.xclip
    pkgs.python3
    pkgs.docker
    pkgs.neofetch
    pkgs.lazygit

    pkgs.go
    pkgs.ripgrep
    pkgs.fzf
    pkgs.nodejs_20
    pkgs.neovim
    pkgs.jq
    pkgs.yarn

    pkgs.sway
    pkgs.swaylock
    pkgs.waybar
    pkgs.wlogout
    pkgs.pamixer
    pkgs.blueman
    pkgs.gtk3
    pkgs.brightnessctl
    pkgs.libinput-gestures
    pkgs.networkmanager_dmenu
    pkgs.kitty

    pkgs.teams-for-linux
    pkgs.slack
  ];


  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/tranthang/etc/profile.d/hm-session-vars.sh
  #

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
