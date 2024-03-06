// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GradeContract {
    uint public Name;
    uint public PrelimGrade;
    uint public MidtermGrade;
    uint public FinalGrade;
    uint public GradeStatus;
    uint public Owner;
    
    function setName(uint _name) public {
        Name = _name;
        }

    function setPrelimGrade(uint _prelimGrade) public onlyOwner{
        PrelimGrade = _prelimGrade;
        }

    function setMidtermGrade(uint _midtermgrade) public onlyOwner{
        MidtermGrade = _midtermgrade;
        }

    function setFinalGrade(uint _finalgrade) public onlyOwner{
        FinalGrade = _finalgrade;
        }

    function calculateGrade() public {
        require(PrelimGrade > 100 && MidtermGrade > 100 && FinalGrade > 100, "Ensure that the grade provided within the valid range of 0 to 100.");
        GradeStatus = PrelimGrade + MidtermGrade + FinalGrade;
        }
        
        modifier onlyOwner() {
            _;
            }
}