# xoshiro
xoshiro / xoroshiro generators

This is a simple program to test [xoshiro / xoroshiro generators](https://prng.di.unimi.it/) by  David Blackman and Sebastiano Vigna. So far, only `xoshiro256**` is implemented.

## Usage
* Compile it with `make`
* Test speed to generate 1e9 64-bit values: `./xoshiro-test -n 1e9`
* Write out first 1e9 64-bit values to stdout: `./xoshiro-test -w -n 1e9 | pv > /dev/null`
* Generate endless stream of 64-bit values and test it with [PractRand test](https://sourceforge.net/projects/pracrand/): `./xoshiro-test -w -n 0 | practrand-RNG_test stdin64 -tlmax 64G -multithreaded`
* `./xoshiro-test --help` to get info on usage
* Verify output (using seed=1): `./xoshiro-test -w -n 0 | head -c 7200 | sha256sum`. Hash: `d741c64f9773de8c1501e27a72639926d189e38115a4f0ace0fd8bc350816de2`
  * Compare output of ` ./xoshiro-test -w -n 0 | head -c 7200` with `xoshiro512_star_star_seed_1.output` file
* On i7-8650U CPU, the time to generate 1e9 64-bit values is 2.6 seconds.
```
./xoshiro-test -n 1e9
Generated 1e+09 64-bit numbers, last value is 14877779430803994399
WALLCLOCK TIME: 2.60375
CPU TIME:       2.60137
```
