# load or install and load packages
load_packages <- function(pkgs) {
  for (pkg in pkgs) {
    if (!require(pkg, character.only = T, quietly = T)) {
      install.packages(pkg, character.only = T)
      require(pkg, character.only = T, quietly = T)
    }
  }
}
