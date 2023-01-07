# Revision history for qcheck

## 0.1.0.0 -- 2023-01-07
QuickCheck tutorial using `cabal init` and tasty

What should be in exe, what should be in lib, and what should be in test?

Now if I want the outputs of MyLib to be delivered by Spock, I can import Spock and MyLib in exe, or I could write another module in src for Spock, but not add it to exposed-modules, just use internally.

How do I test Spock?
I can create a library with it, import the functionality in exe, and in tests.
If I want to have a complicated test, I can write it in tests folder and import into tests/Main.hs

How do I get to properties?
How do I get from here to property testing a plutus smart contract?

I implemented a test, a property test, and a suite using Tasty trees and QuickCheck properties.
[QuickCheck](https://en.wikipedia.org/wiki/QuickCheck) is a combinator library for generating test cases in an approach called property testing (not to confuse with algorithms)

A [test suite](https://en.wikipedia.org/wiki/Test_suite) is a collection of test cases that are intended to be used to test a software program.

A mechanism for determining whether a test has passed or failed is called an [oracle](https://en.wikipedia.org/wiki/Test_oracle)
Specified, Derived, Implicit, Human.
Test oracle problem.

https://en.wikipedia.org/wiki/Software_testing#Property_testing

## 📑

https://en.wikipedia.org/wiki/Design_by_contract
