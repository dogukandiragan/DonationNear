#!/usr/bin/env bash

# exit on first error after this point to avoid redeploying with successful build
set -e

echo
echo ---------------------------------------------------------
echo "Step 1: Build the contract (may take a few seconds)"
echo ---------------------------------------------------------
echo
echo

yarn build


echo
echo
echo ---------------------------------------------------------
echo "Step 2: Deploy the contract"
echo
echo ---------------------------------------------------------
echo

# uncomment out the line below to deploy the other example contract
# near dev-deploy ./build/debug/simple.wasm

# comment the line below to deploy the other example contract

near dev-deploy ./build/release/donation.wasm


echo
echo
echo ---------------------------------------------------------
echo "Step 3: Prepare your environment for next steps"
echo
echo "(a) find the contract (account) name in the message above"
echo "    it will look like this: [ Account id: dev-###-### ]"
echo
echo "(b) set an environment variable using this account name"
echo "    see example below (this may not work on Windows)"
echo
echo ---------------------------------------------------------
echo 'export CONTRACT=<YOUR_DEV_ACCOUNT>'
echo ---------------------------------------------------------
echo

exit 0
