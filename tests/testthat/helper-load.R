project_root <- normalizePath(
  file.path(testthat::test_path(), "..", ".."),
  winslash = "/",
  mustWork = TRUE
)
r_files <- sort(list.files(
  file.path(project_root, "R"),
  pattern = "\\.R$",
  recursive = TRUE,
  full.names = TRUE
))
for (r_file in r_files) {
  sys.source(r_file, envir = .GlobalEnv)
}
