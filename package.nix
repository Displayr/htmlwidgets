{ pkgs ? import <nixpkgs> {}, displayrUtils }:

pkgs.rPackages.buildRPackage {
  name = "htmlwidgets";
  version = displayrUtils.extractRVersion (builtins.readFile ./DESCRIPTION); 
  src = ./.;
  description = ''A framework for creating HTML widgets that render in various
    contexts including the R console, 'R Markdown' documents, and 'Shiny'
    web applications.'';
  propagatedBuildInputs = with pkgs.rPackages; [ 
    yaml
    jsonlite
    htmltools
  ];
}
