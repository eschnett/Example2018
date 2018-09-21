using Test
using Example2018

# Polynomials form a ring
# 1. addition is associative
# 2. additive identity
# 3. additive inverse
# 4. addition commutes
# 5. multiplication is ...

z = Polynomial([0])
p = Polynomial([1, 2, 3])

@test p + z == p
