# Learning Blockchain Concepts
## Chapter 1, Day 1

#### Explain what the Blockchain is in your own words. You can read this to help you, but you don't have to: https://www.investopedia.com/terms/b/blockchain.asp**

Blockchain is an transactional information technology that enables the tracking of shared digital data, usually in a ledger. Through the use of a unique combination of cryptographic techniques, blockchains are able to maintain the integrity of the ledger without the need for a trusted central party.

A network of nodes is responsible for verifying that transactions follow the consensus rules of the network. These nodes monitor the network for transactions and bundles them together into blocks. New blocks are chained to the previous block.  The chain of blocks represents the complete state of the ledger.

A single node is selected to produce each block using various randomization schemes. Some blockchains rely on solving a cryptographic puzzle using processing power. These are proof-of-work chains. Other blockchains rely on other proofs to select the node that will produce a block. The most prominent of these is proof-of-stake. It works by holding a lottery to select the block producing node. Nodes commit funds to indicate to the network that they want to create a block. The more funds that are committed, the more chance they have of winning the lottery and being selected to produce a block.

When a node produces a block, it is responsible for ensuring that the block and all of the transactions in it adhere to the consensus rules. If they don't, the block is ignored by the other nodes and they lose out on the block reward. In proof-of-stake blockchains, the block producer also loses the funds that they committed to the lottery.

#### Explain what a Smart Contract is. You can read this to help you, but you don't have to: https://www.ibm.com/topics/smart-contracts
A smart contract is a program that runs on a blockchain. They define a set of data that will be stored and provide methods that can be called to modify the data. The methods define how the data can be updated and the rules that must be followed.

As an example, NFT track the ownership of a unique digital asset. NFT contracts typically have methods that define how a digital asset is created, what it contains, and how to transfer it to someone else. NFT contracts might only allow the owner of the contract to mint a new NFT or it allow anyone to mint one and require a payment from the minting party. 

Well designed smart contracts can be used to create systems that inherit the characteristics of trustlessness and decentralization from their parent blockchain.

#### Explain the difference between a script and a transaction.
A script describes a process. A script by itself doesn't do anything until it is executed. A transaction executes a script. It provides parameters to the script and triggers it to execute.