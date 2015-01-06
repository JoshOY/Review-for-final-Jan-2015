simpson_rule <- function(func, a, b) {
	rtn <- ((b - a) / 6) * (func(a) + 4 * func((a + b) / 2) + func(b))
	rtn
}