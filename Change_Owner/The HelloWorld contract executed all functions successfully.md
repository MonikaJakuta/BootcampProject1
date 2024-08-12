## This Solidity code defines a simple "Hello World" contract with a modifiable greeting message and ownership transfer functionality.

##  1\. Called by the owner to transfer ownership.

* Input: newOwner: 0x755AFEc95C9889628a24bd15B30574Cb3D70d3FF  
* Status: Successful  
* Returned Transaction Hash: 0x8917fd08846f90db3f0a697bc30f908a29295cb7
  
<img width="894" alt="Screenshot 2024-08-12 at 17 38 00" src="https://github.com/user-attachments/assets/f813ad5d-dfa7-4c67-8747-47384029426c">

## 3\. Called by a non-owner

* Transaction Hash: 0x8917fd08846f90db3f0a697bc30f908a29295cb7   
* Status: Failed execution
* Revert Reason: "Caller is not the owner" 
<img width="921" alt="Screenshot 2024-08-12 at 18 09 16" src="https://github.com/user-attachments/assets/0eaf1508-4a52-4b50-ab81-db22435e5bf5">

