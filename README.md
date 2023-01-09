
# rphon - the random phonetic phrase generator

## Motivation

This is a very simple tool that mostly served as a playground while I learned how to properly build a `nix` package.

It might also be useful for generating answers to "security" questions that are un-guessable and don't leak private data while still being easy to read out loud over the phone if needed.

I do NOT recommend using this tool to generate mission-critical passwords unless you understand how it works and are prepared to accept the associated risks.

## Installation

The best way to develop/build/install this software is via `nix`, see [this page](https://nixos.org/download.html) for installation instructions.

Build rphon with `nix-build` to generate an executable in the `results/` symlink folder.

Install after building with `nix-env -i ./result`.

You can also run `npm install` and then something like `ts-node src/index.ts 4 --verbose` to test it out quickly without relying on `nix`.

## Usage

`rphon` takes one optional parameter: the number of random words to generate (default: `3`)

`rphon` accepts one optional flag: `--verbose` which prints an entropy analysis (must be the 2nd arg so you must provide a number of words to generate to get verbose output).

Note: the non-verbose output does NOT include a trailing newline so that it can be piped to your clipboard w/out whitespace pollution.

Example usage:
(newlines have been added after non-verbose output for enhanced readability)

```shell
$ rphon
digbus-dinnym-hidnyd

$ rphon 1
lavmun

$ rphon | pbcopy # send the random word straight to your clipboard on mac (or use xclip on linux)

$ rphon 3 --verbose
Creating a random phonetic phrase with 3 words
dictionary of 65536 ^ 3 words = 2.8e14 options
Average Joe could crack this password in 8 years
Bitcoin miners could crack this password in 0.0 seconds
This password would cost miners about $0.0 to crack

441 + 684 = ridryc
240 + 738 = ritweg
159 + 123 = tirled

ridryc-ritweg-tirled

$ rphon 5 --verbose
Creating a random phonetic phrase with 5 words
dictionary of 65536 ^ 5 words = 1.2e24 options
Average Joe could crack this password in 38,334,786,263 years
Bitcoin miners could crack this password in 4,835.703 seconds
This password would cost miners about $483,570.3 to crack

 54 + 273 = dophep
687 + 303 = sarwet
750 + 504 = noctuc
 48 + 609 = riglec
672 + 225 = nimsem

dophep-sarwet-noctuc-riglec-nimsem
```
