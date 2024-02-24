pragma solidity ^0.8.12;
contract product{
   bytes32[] products; 
   bytes32[] owners; 
   bytes32[] status; 


//function for to set the product
function viewProducts () public view returns(bytes32[] memory, bytes32[] memory,bytes32[] memory) {
        return(products,owners,pStatus);
    }

    function sellProduct (bytes32 sProductId) public {
        bytes32 status;
        uint i;
        uint j=0;

        if(products.length>0) {
            for(i=0;i<products.length;i++) {
                if(products[i]==sProductId) {
                    j=i;
                }
            }
        }

        status=pStatus[j];
        if(status=="Available") {
            pStatus[j]="NA";
        }
    }
}