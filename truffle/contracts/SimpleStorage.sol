// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {

  enum ChooseField {Tie,BAT,BALL}

  ChooseField chooseField;

    enum typeOfBaller {Fast,spin} 

    enum fasterBallType {yorker,full,good,short,Bouncer,fullTose} 

    enum sppinerBallType {topSpin, Doosra, armBall, offBreak}

   enum typeOfShot {
                    scoop,
                    legGlance,
                    sweep,
                    hook,
                    pull,
                    onDrive,
                    loftedDrive,
                    straightDrive,
                    offDrive,
                    coverDrive,
                    squareDrive,
                    squareCut,
                    reveseSweep,
                    upeerCut
                    }


  //This is for generating the random number
  uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
  bool update;
  // Function to check user won or not
  function tossChoss(uint256 number) public returns(bool) {
      if(number == randNumber){
          update = true;
          return true;
      }
      update = false;
      return false;
  }

  function fieldChoss(uint _value) public {
            require(uint(ChooseField.BALL) >= _value);
            chooseField = ChooseField(_value);
    }
}
