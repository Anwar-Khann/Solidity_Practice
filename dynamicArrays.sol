// SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract DynamicArrays{
    uint[] public Rollnumbers =[12,13,14,15,16,17,18,19,20];
    function get()public {
       
       
      uint temp ;
      temp = Rollnumbers[3];

      //update 
      Rollnumbers[1] = 786;

      delete Rollnumbers[0];//delete

      Rollnumbers.push(3);//push

    //   Rollnumbers.pop();
    }
    function POpelement() public {
        Rollnumbers.pop();
    }
     function getLength() public view returns(uint) {
        uint length = Rollnumbers.length;
        return length;
    }
    

    //to return dynamic sixe array
    function returnarray() public view returns(uint[] memory){
        return Rollnumbers;
    }

//        //update
//   function update() public{
//       Rollnumbers[1] = 786;
//   }
       
//        function delete() public{
//            delete Rollnumbers[6];
//        }
//        //delete
//     //    delete Rollnumbers[6];

//        //push

//     //    Rollnumbers.push(9875);

//        //pop

    
    
}