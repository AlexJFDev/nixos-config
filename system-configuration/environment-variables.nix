{ config, pkgs, ... }:

{
  environment.variables = {
    PATH="/run/user/1000/fnm_multishells/90957_1741198157440/bin";
    FNM_MULTISHELL_PATH="/run/user/1000/fnm_multishells/90957_1741198157440";
    FNM_VERSION_FILE_STRATEGY="local";
    FNM_DIR="/home/alexjf/.local/share/fnm";
    FNM_LOGLEVEL="info";
    FNM_NODE_DIST_MIRROR="https://nodejs.org/dist";
    FNM_COREPACK_ENABLED="false";
    FNM_RESOLVE_ENGINES="false";
    FNM_ARCH="x64";
  };
}