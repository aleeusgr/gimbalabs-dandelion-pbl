11 Jan
```
nix-shell$ cd /always-succeeds

# this may take a while the first time
cabal update
cabal repl 

Prelude MyFirstPlutusCompiler>

Right()
```
I need to automate this.

Note: I got a warning about submodules in git

7 Jan

Now, how do I implement property checking for smart contracts?

[Discussion](https://github.com/input-output-hk/Developer-Experience-working-group/discussions/41)

>Some input on how to test plutus contracts using a ContractModel. That is, use a QuickCheck model to automatically generate test cases for your plutus contract.

>https://plutus-apps.readthedocs.io/en/latest/plutus/tutorials/contract-testing.html
https://plutus-apps.readthedocs.io/en/latest/plutus/tutorials/contract-models.html

>Note that you do not necessary need to use the contract monad in plutus-apps, even though the tutorials do use this for their testing approach. Just ping Quviq if you want to get automatic test case generation in a different setting.

3 Jan

303 - User test.
The goal of the project for me is to commit to a transaction. I failed to debug my shell script before deadline.

SIDAN - **build and deploy**
The initial goal for me was to be able to deploy SIDAN in docker image. This requires debuggin `nix-build`, which I am in the process of doing. However there is bigger picture. Understanding how to build `plutus-app` is an opportunity to learn how a complex project is automatically build, what are the challenges, what are design choices, etc.

aoc - **testing**; I started advent of code with Matthias, after completing the first task I decided to do some embelishments - I followed a [[TWEAG, testing in Haskell]] video to create an automated test with Hspec.

init: two projects as of now: SIDAN and 303-Unit Test.

