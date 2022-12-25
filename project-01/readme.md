# Always Succeeds Contract

Minimal implementation of a Plutus project, built using [Plutus Apps](https://github.com/input-output-hk/plutus-apps) tag `v2022-04-06`. 

## Usage:
### Start by cloning this repository and Plutus-Apps
```
git clone https://gitlab.com/gimbalabs/ppbl-course-02
git clone https://github.com/input-output-hk/plutus-apps
```
Then create an `/output` folder at the root of the project, because our Plutus compiler will expect this directory to exist.
- `cd ppbl-course-02/project-01`
- `mkdir output`

## Step 1: Install Nix
- Start here: https://nixos.org/download.html

#### You will know you are successful if:
- `nix-env --version` (https://nixos.org/download.html#nix-verify-installation)

## Step 2: Start Plutus-Apps
- In `cabal.project`, look for the expected tag for `plutus-apps`
- Change directory to `/plutus-apps` that was cloned earlier (hint: for this project, it's `v2022-04-06`)
- In `/plutus-apps`, run `git checkout v2022-04-06`.
- in `/plutus-apps` run `nix-shell`

#### You will know you are successful if:
- You can see the nix command line `[nix-shell:~/.../plutus-apps]$`

## Step 3: Compile your first Plutus Script
- In `nix-shell`, change directory to `/ppbl-course-02/project-01`
- Run `cabal update` (this may take a while the first time)
- Run `cabal repl` (this may take a while the first time)

#### You will know you are successful if:
You can run `cabal repl` and see that MyFirstPlutusCompiler is loaded:
```
Prelude MyFirstPlutusCompiler>
```
...and you can run `writeMyFirstValidatorScript` and get
```
Right ()
```
Now look in `/project-01/output`. You should see your first compiled Plutus Script - way to go!


## Step 4 (optional):
If you have `cardano-cli` installed, you can create a Contract Address from this script.

```
cardano-cli address build \
--payment-script-file /always-succeeds/output/my-first-script.plutus
--testnet-magic 1097911063 \
--out-file my-first-script.addr
```

Look at this address on https://testnet.cardanoscan.io/. What do you notice?