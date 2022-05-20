#* Apply function fun to a model.
#* @param fun name of the function to apply.
#* @get /make
function() {
  targets::tar_make()
}

#* Apply function fun to a model.
#* @param fun name of the function to apply.
#* @get /apply
function(fun) {
  fun <- eval(str2expression(fun))
  to <- targets::tar_outdated()
  if (is.null(to) || length(to) != 0) {
    message("Some targets are outdated. Please run 'make' first.")
  }
  fun(targets::tar_read_raw("model"))
}
