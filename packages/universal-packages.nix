
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    google-chrome
    #eclipses.eclipse-sdk
    eclipses.eclipse-cpp
    eclipses.eclipse-java
    zulu23 # Java
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        # Nix Language
        bbenoist.nix

        # C++
        ms-vscode.cpptools
        ms-vscode.cmake-tools
        # ms-vscode.cpptools-themes
        ms-vscode.makefile-tools

        # Python
        ms-python.python
        ms-python.vscode-pylance
        ms-python.debugpy

        # Spell Check
        streetsidesoftware.code-spell-checker

        # Java
        visualstudioexptteam.vscodeintellicode
        redhat.java
        vscjava.vscode-java-debug
        vscjava.vscode-maven
        vscjava.vscode-java-test
        vscjava.vscode-java-dependency
        vscjava.vscode-gradle
        # oracle.oracle-java # Installed manually

        # Vue.js Extensions
        vue.volar
        dbaeumer.vscode-eslint
        esbenp.prettier-vscode
      ];
    })
    (python3.withPackages (ps: with ps; [ numpy pandas requests matplotlib sympy ]))
    libreoffice-qt6-fresh
    
    # C/C++
    bison
    flex
    fontforge
    makeWrapper
    pkg-config
    gnumake
    gcc
    libiconv
    autoconf
    automake
    libtool

    #NodeJS
    fnm
    yarn

    # Miscellaneous
    google-cloud-sdk
    redis
    hello
  ];
}