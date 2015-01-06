midpoint_rule <- function(func_expression, a, b, ksi = NA) {
	if (is.na(ksi)) {
		ksi <- (a + b) / 2
	}
	func <- deriv(func_expression)
	ddfunc <- attr(func(ksi), 'hessian')
	rtn <- ((b - a) ^ 3) * ddfunc / 12
	rtn
}