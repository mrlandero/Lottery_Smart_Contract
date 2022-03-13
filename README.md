# Lottery_Smart_Contract
Use Solidity to create a lottery that will randomly pick a winner, when at least 3 entrants are present. Each entry is worth 0.2 ETH, and when the winner is randomly selected, the funds from the lottery contract will be transferred to that address.

---

## Technologies & Installation Guide

This project leverages python 3.7 and solidity 0.8.0 with the following packages:

1. Ganache Test Blockchain

2. MetaMask Decentralized Wallet

Let's begin by installing Ganache:

**[Ganache Test BlockChain](https://trufflesuite.com/ganache/)** - Follow the installation instructions for your Operating System.

Now, let's intall MetaMask, and we'll be ready to run this lottery:

**[Metamask Digital Wallet](https://metamask.io/)** - Follow the installation instructions for your Operating System.

We are now done with all of the installations we need to run our application.

---

## Usage Guide

We need to begin with our connections to Ganache and MetaMask. We will be using Ganache as our test blockchain and MetaMask as our EOA (Externally Owned Account). We use MetaMask for its decentralized nature. 

When you open Ganache, select the `QUICKSTART` option. Once you have the test blockchain running, go to the settings icon and change the name of the test chain to `LOTTERY` in order to save this workspace. 

![Ganache Lottery Launch](images/one_ganache_lottery_workspace.png)

In the preceding image we can see the name of the workspace was updated to `LOTTERY`, and we have several accounts, each starting with a balance of 100 ETH.

Next, we need to import our Ganache accounts into MetaMask:

![Import Ganache Account](images/two_ganache_private_key.png)

From the Ganache `ACCOUNTS` tab, click on the key icon, to the far-right of the first account. When the `PRIVATE KEY` appears, copy it so we can paste it in MetaMask. 

![Import into MetaMask](images/three_import_account.png)

Once you return to MetaMask, click on `Import Account`, and when prompted, paste the private key from Ganache in the field provided. 

We must now connect the account in MetaMask to Remix:

![Connect MetaMask to Remix](images/four_connect_account_to_remix.png)

When you re-launch MetaMask, there will be a message asking us to connect the account we just imported. Click on `Connect` and this account will now be connected to Ganache, MetaMask, and Remix. 

Let's change the account's name to something we'll associate with this project:

![]()