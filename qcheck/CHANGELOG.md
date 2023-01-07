# Revision history for qcheck

## 0.1.0.0 -- 2023-01-07

* cabal run, cabal test.

What should be in exe, what should be in lib, and what should be in test?

Now if I want the outputs of MyLib to be delivered by Spock, I can import Spock and MyLib in exe, or I could write another module in src for Spock, but not add it to exposed-modules, just use internally.

How do I test Spock?
I can create a library with it, import the functionality in exe, and in tests.
If I want to have a complicated test, I can write it in tests folder and import into tests/Main.hs

How do I get to properties?
How do I get from here to property testing a plutus smart contract?

