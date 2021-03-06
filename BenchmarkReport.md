# Benchmark Report

My Project Euler solution programs were bench­marked to see how much time it took to compute the answer.
This information gives a rough sense of which problems are easy or hard, and how the choice of program­ming language affects the running time.

Note that the benchmark does *not* attempt to be “fair” in any way.
The time of the benchmark includes the (JIT) compile time and the start time of the interpreter.
The algorithms between different languages are not exactly the same.
And my solution code is not optimized for the fastest speed.

All the numbers listed in the table below are in seconds, and these computing environments were used:

> Windows 10 (Home Edition)
>
> Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz, 6 cores, 12 logical processors
>
> NVIDA GeForce GTX 1650

* Wolfram Mathematica 12.0 (64-bit)
* Julia 1.1.1 (64-bit)

| ID | Description / Title | Wolfram Language | Julia |
|:--:|:-------------------:|:----------------:|:-----:|
| 1 | [Multiples of 3 and 5](https://github.com/miRoox/ProjectEuler/blob/master/1.%20Multiples%20of%203%20and%205/README.md) | [3.10104](https://github.com/miRoox/ProjectEuler/blob/master/1.%20Multiples%20of%203%20and%205/1.wl) | [0.271376](https://github.com/miRoox/ProjectEuler/blob/master/1.%20Multiples%20of%203%20and%205/1.jl) |
| 2 | [Even Fibonacci numbers](https://github.com/miRoox/ProjectEuler/blob/master/2.%20Even%20Fibonacci%20numbers/README.md) | [3.15732](https://github.com/miRoox/ProjectEuler/blob/master/2.%20Even%20Fibonacci%20numbers/2.wl) | [0.377115](https://github.com/miRoox/ProjectEuler/blob/master/2.%20Even%20Fibonacci%20numbers/2.jl) |
| 3 | [Largest prime factor](https://github.com/miRoox/ProjectEuler/blob/master/3.%20Largest%20prime%20factor/README.md) | [2.9929](https://github.com/miRoox/ProjectEuler/blob/master/3.%20Largest%20prime%20factor/3.wl) | [0.762487](https://github.com/miRoox/ProjectEuler/blob/master/3.%20Largest%20prime%20factor/3.jl) |
| 4 | [Largest palindrome product](https://github.com/miRoox/ProjectEuler/blob/master/4.%20Largest%20palindrome%20product/README.md) | [3.24661](https://github.com/miRoox/ProjectEuler/blob/master/4.%20Largest%20palindrome%20product/4.wl) | [0.607302](https://github.com/miRoox/ProjectEuler/blob/master/4.%20Largest%20palindrome%20product/4.jl) |
| 5 | [Smallest multiple](https://github.com/miRoox/ProjectEuler/blob/master/5.%20Smallest%20multiple/README.md) | [3.00816](https://github.com/miRoox/ProjectEuler/blob/master/5.%20Smallest%20multiple/5.wl) | [0.237677](https://github.com/miRoox/ProjectEuler/blob/master/5.%20Smallest%20multiple/5.jl) |
| 6 | [Sum square difference](https://github.com/miRoox/ProjectEuler/blob/master/6.%20Sum%20square%20difference/README.md) | [3.20049](https://github.com/miRoox/ProjectEuler/blob/master/6.%20Sum%20square%20difference/6.wl) | [0.319225](https://github.com/miRoox/ProjectEuler/blob/master/6.%20Sum%20square%20difference/6.jl) |
| 7 | [10001st prime](https://github.com/miRoox/ProjectEuler/blob/master/7.%2010001st%20prime/README.md) | [3.09386](https://github.com/miRoox/ProjectEuler/blob/master/7.%2010001st%20prime/7.wl) | [0.38362](https://github.com/miRoox/ProjectEuler/blob/master/7.%2010001st%20prime/7.jl) |
| 8 | [Largest product in a series](https://github.com/miRoox/ProjectEuler/blob/master/8.%20Largest%20product%20in%20a%20series/README.md) | [3.56646](https://github.com/miRoox/ProjectEuler/blob/master/8.%20Largest%20product%20in%20a%20series/8.wl) | [2.06379](https://github.com/miRoox/ProjectEuler/blob/master/8.%20Largest%20product%20in%20a%20series/8.jl) |
| 9 | [Special Pythagorean triplet](https://github.com/miRoox/ProjectEuler/blob/master/9.%20Special%20Pythagorean%20triplet/README.md) | [3.24809](https://github.com/miRoox/ProjectEuler/blob/master/9.%20Special%20Pythagorean%20triplet/9.wl) | [1.29112](https://github.com/miRoox/ProjectEuler/blob/master/9.%20Special%20Pythagorean%20triplet/9.jl) |
| 10 | [Summation of primes](https://github.com/miRoox/ProjectEuler/blob/master/10.%20Summation%20of%20primes/README.md) | [3.24827](https://github.com/miRoox/ProjectEuler/blob/master/10.%20Summation%20of%20primes/10.wl) | [0.370174](https://github.com/miRoox/ProjectEuler/blob/master/10.%20Summation%20of%20primes/10.jl) |
| 11 | [Largest product in a grid](https://github.com/miRoox/ProjectEuler/blob/master/11.%20Largest%20product%20in%20a%20grid/README.md) | [3.38882](https://github.com/miRoox/ProjectEuler/blob/master/11.%20Largest%20product%20in%20a%20grid/11.wl) | [1.14912](https://github.com/miRoox/ProjectEuler/blob/master/11.%20Largest%20product%20in%20a%20grid/11.jl) |
| 12 | [Highly divisible triangular number](https://github.com/miRoox/ProjectEuler/blob/master/12.%20Highly%20divisible%20triangular%20number/README.md) | [3.13923](https://github.com/miRoox/ProjectEuler/blob/master/12.%20Highly%20divisible%20triangular%20number/12.wl) | [3.61142](https://github.com/miRoox/ProjectEuler/blob/master/12.%20Highly%20divisible%20triangular%20number/12.jl) |
| 13 | [Large sum](https://github.com/miRoox/ProjectEuler/blob/master/13.%20Large%20sum/README.md) | [3.22897](https://github.com/miRoox/ProjectEuler/blob/master/13.%20Large%20sum/13.wl) | [0.376682](https://github.com/miRoox/ProjectEuler/blob/master/13.%20Large%20sum/13.jl) |
| 14 | [Longest Collatz sequence](https://github.com/miRoox/ProjectEuler/blob/master/14.%20Longest%20Collatz%20sequence/README.md) | [3.95893](https://github.com/miRoox/ProjectEuler/blob/master/14.%20Longest%20Collatz%20sequence/14.wl) | [0.58531](https://github.com/miRoox/ProjectEuler/blob/master/14.%20Longest%20Collatz%20sequence/14.jl) |
| 15 | [Lattice paths](https://github.com/miRoox/ProjectEuler/blob/master/15.%20Lattice%20paths/README.md) | [3.10475](https://github.com/miRoox/ProjectEuler/blob/master/15.%20Lattice%20paths/15.wl) | [0.241299](https://github.com/miRoox/ProjectEuler/blob/master/15.%20Lattice%20paths/15.jl) |
| 16 | [Power digit sum](https://github.com/miRoox/ProjectEuler/blob/master/16.%20Power%20digit%20sum/README.md) | [2.96379](https://github.com/miRoox/ProjectEuler/blob/master/16.%20Power%20digit%20sum/16.wl) | [0.270584](https://github.com/miRoox/ProjectEuler/blob/master/16.%20Power%20digit%20sum/16.jl) |
| 17 | [Number letter counts](https://github.com/miRoox/ProjectEuler/blob/master/17.%20Number%20letter%20counts/README.md) | [3.13503](https://github.com/miRoox/ProjectEuler/blob/master/17.%20Number%20letter%20counts/17.wl) | [0.410959](https://github.com/miRoox/ProjectEuler/blob/master/17.%20Number%20letter%20counts/17.jl) |
| 18 | [Maximum path sum I](https://github.com/miRoox/ProjectEuler/blob/master/18.%20Maximum%20path%20sum%20I/README.md) | [3.20506](https://github.com/miRoox/ProjectEuler/blob/master/18.%20Maximum%20path%20sum%20I/18.wl) | [0.408651](https://github.com/miRoox/ProjectEuler/blob/master/18.%20Maximum%20path%20sum%20I/18.jl) |
| 19 | [Counting Sundays](https://github.com/miRoox/ProjectEuler/blob/master/19.%20Counting%20Sundays/README.md) | [3.40288](https://github.com/miRoox/ProjectEuler/blob/master/19.%20Counting%20Sundays/19.wl) | / |
| 20 | [Factorial digit sum](https://github.com/miRoox/ProjectEuler/blob/master/20.%20Factorial%20digit%20sum/README.md) | [3.03883](https://github.com/miRoox/ProjectEuler/blob/master/20.%20Factorial%20digit%20sum/20.wl) | [0.281711](https://github.com/miRoox/ProjectEuler/blob/master/20.%20Factorial%20digit%20sum/20.jl) |
| 21 | [Amicable numbers](https://github.com/miRoox/ProjectEuler/blob/master/21.%20Amicable%20numbers/README.md) | [3.28917](https://github.com/miRoox/ProjectEuler/blob/master/21.%20Amicable%20numbers/21.wl) | / |
| 22 | [Names scores](https://github.com/miRoox/ProjectEuler/blob/master/22.%20Names%20scores/README.md) | [13.8305](https://github.com/miRoox/ProjectEuler/blob/master/22.%20Names%20scores/22.wl) | [1.3852](https://github.com/miRoox/ProjectEuler/blob/master/22.%20Names%20scores/22.jl) |
| 23 | [Non-abundant sums](https://github.com/miRoox/ProjectEuler/blob/master/23.%20Non-abundant%20sums/README.md) | [16.2469](https://github.com/miRoox/ProjectEuler/blob/master/23.%20Non-abundant%20sums/23.wl) | / |
| 24 | [Lexicographic permutations](https://github.com/miRoox/ProjectEuler/blob/master/24.%20Lexicographic%20permutations/README.md) | [2.16237](https://github.com/miRoox/ProjectEuler/blob/master/24.%20Lexicographic%20permutations/24.wl) | / |
| 25 | [1000-digit Fibonacci number](https://github.com/miRoox/ProjectEuler/blob/master/25.%201000-digit%20Fibonacci%20number/README.md) | [2.03865](https://github.com/miRoox/ProjectEuler/blob/master/25.%201000-digit%20Fibonacci%20number/25.wl) | [1.17238](https://github.com/miRoox/ProjectEuler/blob/master/25.%201000-digit%20Fibonacci%20number/25.jl) |
| 26 | [Reciprocal cycles](https://github.com/miRoox/ProjectEuler/blob/master/26.%20Reciprocal%20cycles/README.md) | [2.11872](https://github.com/miRoox/ProjectEuler/blob/master/26.%20Reciprocal%20cycles/26.wl) | / |
| 27 | [Quadratic primes](https://github.com/miRoox/ProjectEuler/blob/master/27.%20Quadratic%20primes/README.md) | [11.1369](https://github.com/miRoox/ProjectEuler/blob/master/27.%20Quadratic%20primes/27.wl) | / |
| 28 | [Number spiral diagonals](https://github.com/miRoox/ProjectEuler/blob/master/28.%20Number%20spiral%20diagonals/README.md) | [2.08386](https://github.com/miRoox/ProjectEuler/blob/master/28.%20Number%20spiral%20diagonals/28.wl) | / |
| 29 | [Distinct powers](https://github.com/miRoox/ProjectEuler/blob/master/29.%20Distinct%20powers/README.md) | [2.02685](https://github.com/miRoox/ProjectEuler/blob/master/29.%20Distinct%20powers/29.wl) | / |
| 30 | [Digit fifth powers](https://github.com/miRoox/ProjectEuler/blob/master/30.%20Digit%20fifth%20powers/README.md) | [4.10075](https://github.com/miRoox/ProjectEuler/blob/master/30.%20Digit%20fifth%20powers/30.wl) | / |
| 31 | [Coin sums](https://github.com/miRoox/ProjectEuler/blob/master/31.%20Coin%20sums/README.md) | [2.42202](https://github.com/miRoox/ProjectEuler/blob/master/31.%20Coin%20sums/31.wl) | / |
| 32 | [Pandigital products](https://github.com/miRoox/ProjectEuler/blob/master/32.%20Pandigital%20products/README.md) | [11.1372](https://github.com/miRoox/ProjectEuler/blob/master/32.%20Pandigital%20products/32.wl) | / |
| 33 | [Digit cancelling fractions](https://github.com/miRoox/ProjectEuler/blob/master/33.%20Digit%20cancelling%20fractions/README.md) | [2.07394](https://github.com/miRoox/ProjectEuler/blob/master/33.%20Digit%20cancelling%20fractions/33.wl) | / |
| 34 | [Digit factorials](https://github.com/miRoox/ProjectEuler/blob/master/34.%20Digit%20factorials/README.md) | [20.5655](https://github.com/miRoox/ProjectEuler/blob/master/34.%20Digit%20factorials/34.wl) | [3.32843](https://github.com/miRoox/ProjectEuler/blob/master/34.%20Digit%20factorials/34.jl) |
| 35 | [Circular primes](https://github.com/miRoox/ProjectEuler/blob/master/35.%20Circular%20primes/README.md) | [13.2251](https://github.com/miRoox/ProjectEuler/blob/master/35.%20Circular%20primes/35.wl) | / |
| 36 | [Double-base palindromes](https://github.com/miRoox/ProjectEuler/blob/master/36.%20Double-base%20palindromes/README.md) | [12.813](https://github.com/miRoox/ProjectEuler/blob/master/36.%20Double-base%20palindromes/36.wl) | / |
| 37 | [Truncatable primes](https://github.com/miRoox/ProjectEuler/blob/master/37.%20Truncatable%20primes/README.md) | [3.11345](https://github.com/miRoox/ProjectEuler/blob/master/37.%20Truncatable%20primes/37.wl) | / |
| 38 | [Pandigital multiples](https://github.com/miRoox/ProjectEuler/blob/master/38.%20Pandigital%20multiples/README.md) | [9.13177](https://github.com/miRoox/ProjectEuler/blob/master/38.%20Pandigital%20multiples/38.wl) | / |
| 39 | [Integer right triangles](https://github.com/miRoox/ProjectEuler/blob/master/39.%20Integer%20right%20triangles/README.md) | [13.6117](https://github.com/miRoox/ProjectEuler/blob/master/39.%20Integer%20right%20triangles/39.wl) | / |
| 40 | [Champernowne's constant](https://github.com/miRoox/ProjectEuler/blob/master/40.%20Champernowne%27s%20constant/README.md) | [2.25072](https://github.com/miRoox/ProjectEuler/blob/master/40.%20Champernowne%27s%20constant/40.wl) | / |
| 41 | [Pandigital prime](https://github.com/miRoox/ProjectEuler/blob/master/41.%20Pandigital%20prime/README.md) | [2.27265](https://github.com/miRoox/ProjectEuler/blob/master/41.%20Pandigital%20prime/41.wl) | / |
| 42 | [Coded triangle numbers](https://github.com/miRoox/ProjectEuler/blob/master/42.%20Coded%20triangle%20numbers/README.md) | [3.96906](https://github.com/miRoox/ProjectEuler/blob/master/42.%20Coded%20triangle%20numbers/42.wl) | / |
| 43 | [Sub-string divisibility](https://github.com/miRoox/ProjectEuler/blob/master/43.%20Sub-string%20divisibility/README.md) | [34.923](https://github.com/miRoox/ProjectEuler/blob/master/43.%20Sub-string%20divisibility/43.wl) | / |
| 44 | [Pentagon numbers](https://github.com/miRoox/ProjectEuler/blob/master/44.%20Pentagon%20numbers/README.md) | [8.482](https://github.com/miRoox/ProjectEuler/blob/master/44.%20Pentagon%20numbers/44.wl) | / |
| 45 | [Triangular, pentagonal, and hexagonal](https://github.com/miRoox/ProjectEuler/blob/master/45.%20Triangular%2C%20pentagonal%2C%20and%20hexagonal/README.md) | [2.12449](https://github.com/miRoox/ProjectEuler/blob/master/45.%20Triangular%2C%20pentagonal%2C%20and%20hexagonal/45.wl) | / |
| 46 | [Goldbach's other conjecture](https://github.com/miRoox/ProjectEuler/blob/master/46.%20Goldbach%27s%20other%20conjecture/README.md) | [2.88558](https://github.com/miRoox/ProjectEuler/blob/master/46.%20Goldbach%27s%20other%20conjecture/46.wl) | / |
| 47 | [Distinct primes factors](https://github.com/miRoox/ProjectEuler/blob/master/47.%20Distinct%20primes%20factors/README.md) | [4.08421](https://github.com/miRoox/ProjectEuler/blob/master/47.%20Distinct%20primes%20factors/47.wl) | / |
| 48 | [Self powers](https://github.com/miRoox/ProjectEuler/blob/master/48.%20Self%20powers/README.md) | [2.04312](https://github.com/miRoox/ProjectEuler/blob/master/48.%20Self%20powers/48.wl) | / |
| 49 | [Prime permutations](https://github.com/miRoox/ProjectEuler/blob/master/49.%20Prime%20permutations/README.md) | [2.12353](https://github.com/miRoox/ProjectEuler/blob/master/49.%20Prime%20permutations/49.wl) | / |
| 50 | [Consecutive prime sum](https://github.com/miRoox/ProjectEuler/blob/master/50.%20Consecutive%20prime%20sum/README.md) | [12.7701](https://github.com/miRoox/ProjectEuler/blob/master/50.%20Consecutive%20prime%20sum/50.wl) | / |
