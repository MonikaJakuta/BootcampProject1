# BootcampProject1
## Project purpose
The purpose of this project is to demonstrate the functionality of a simple Solidity smart contract, termed "HelloWorld." This contract serves as an introductory example of how to create a modifiable greeting message and manage ownership transfer within a blockchain environment. By executing various functions, the project showcases the contract's capabilities, including successful deployment, updating state variables, and enforcing ownership rules.

## Short Summary
The "HelloWorld" contract was successfully deployed on the blockchain, as evidenced by the transaction hash 0x755AFEc95C9889628a24bd15B30574Cb3D70d3FF, which returned the value "Hello World." Following the deployment, the contract's setText function was called successfully, updating the text variable to "New," with the transaction hash 0x8917fd08846f90db3f0a697bc30f908a29295cb7 confirming this change.
Additionally, the contract includes functionality for ownership transfer. The current owner successfully initiated a transfer of ownership to the address 0x755AFEc95C9889628a24bd15B30574Cb3D70d3FF. However, an attempt by a non-owner to invoke this transfer resulted in a failed execution, reverting with the reason "Caller is not the owner." This highlights the importance of access control in smart contracts, ensuring that only authorized users can perform sensitive operations.
