trapezoidal_rule <- function(func, a, b) {
	rtn <- 0.5 * (b - a) * (func(a) + func(b))
	rtn
}