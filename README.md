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

![Change Account Name](images/five_change_account_name.png)

Let's call this first account `FIRST`. 

We also need to make sure that we change our Virtual Machine from the `Javascript VM` to `Injected WEB3`:

![Injected Web3](images/six_injected_web3.png)

In the `ENVIRONMENT` field of the `DEPLOY` section, in the Remix sidebar, select `Injected Web3`. This will help us make use of our Ganache and MetaMask connections to deploy and test this contract. 

Before continuing to compiling and deploying our contract, we should import at least 4 more accounts from Ganache into MetaMask. The lottery needs at least 5 entries in order to pick a winner. We have only imported 1 account, so we need to import a few more in order to be able to conduct the lottery. In our case, we imported a total of 6 accounts.

It is now time to compile our smart contract:

![Compile Contract](images/seven_compile_contract.png)

Make sure you are selecting the correct compiler, in this case `0.8.7+commit.e28d00a7`. Once the correct compiler is selected click on the blue `Compile lottery.sol` button to compile. 

If there are no compilation errors, we should see a green check mark next to the compile icon. 

Great! Now that we have a successfully compiled contract, we can deploy it:

![Deploy Contract](images/eight_deploy_contract.png)

Click on the deploy icon, below the compile icon, to be taken to the deployment section. In the `Contract` field, we need to make sure we are deploying the correct contract, for us this is `Lottery-Udemy-Master Ethereum & Solidity/lottery.sol`. Once the correct contract is selected, we open MetaMask and make sure we are working with the account labeled `FIRST`. This will be the account that deploys the contract, and thus the contract's manager. Once the correct account and contract are selceted, we click on the orange `Deploy` button.<br>
You will be prompted by MetaMask to confirm the transaction. Click on the blue `Confirm` button to authorize the transaction. 
Congratulations! We have now compiled and deployed our Lottery Smart Contract. 

We can use the Remix IDE to verify that our contract was deployed successfully:

![Remix Deploy Confirmation](images/nine_deployment_confirmation.png)

In the `Terminal` view of the Remix IDE we can see a confirmation. It has a green check mark stating `true Transaction mined and executed succeed`. It also provides us with the transaction hash. We have now confirmed our contract deployment. 

We can also verify the contract creation through Ganache:

![Ganache Contract Creation](images/ten_ganache_contract_creation.png)

In the Ganache workspace, click on the `TRANSACTIONS` tab to review the transactions. We only have one transaction and this transaction receipt displays a red label reading `CONTRACT CREATION`. This confirms that our contract was created. 

We can also check the balance of the account that deployed the contract. In our case, the first Ganache account:

![First Account Balance](images/eleven_ganache_first_account_balance.png)

We can see that this account now has a balance of 99.99 ETH. It started with 100 ETH. This is because in order to deploy the contract, this account needed to pay the gas fee for executing the transaction. Therefore, they now have less than the 100 ETH they began with. 