using Example2018

@show Polynomial([1,2,3])
@show evaluate(Polynomial([1,2,3]), 2)
@show Polynomial([1,2,3]) + Polynomial([4,5])
@show 3 * Polynomial([1,2,4,42])
@show deriv(Polynomial([1,1,1,1,1]))
@show deriv(Polynomial([0,0,1,0,0]))
