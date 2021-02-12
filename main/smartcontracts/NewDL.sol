pragma solidity 0.7.4;

contract NewDL {
    struct Driver {
        string Firstname;
        string Lastname;
        uint256 Birth;
        uint256 DLN;
        string Address;
        string Sex;
        uint256 Height;
        string Eyes;
        string Class;
    }
    
    Driver driverdata;
    
    function setFirstname(string memory value) public{
        driverdata.Firstname = value;
    }
    
    function setLastname(string memory value) public{
        driverdata.Lastname = value;
    }
    
    function setBirth(uint256 value) public{
        driverdata.Birth = value;
    }
    
    function setDLN(uint256 value) public{
        driverdata.DLN = value;
    }
    
    function setAddress(string memory value) public{
        driverdata.Address = value;
    }
    
    function setSex(string memory value) public{
        driverdata.Sex = value;
    }
    
    function setHeight(uint256 value) public{
        driverdata.Height = value;
    }
    
    function setEyes(string memory value) public{
        driverdata.Eyes = value;
    }
    
    function setClass(string memory value) public{
        driverdata.Class = value;
    }
    
    function getFirstname() public view returns (string memory){
        return driverdata.Firstname;
    }
    
    
    function getLastname() public view returns (string memory){
        return driverdata.Lastname;
    }
    
    function getBirth() public view returns (uint256){
        return driverdata.Birth;
    }
    
    function getDLN() public view returns (uint256){
        return driverdata.DLN;
    }
    
    function getAddress() public view returns (string memory){
        return driverdata.Address;
    }
    
    function getSex() public view returns (string memory){
        return driverdata.Sex;
    }
    
    function getHeight() public view returns (uint256){
        return driverdata.Height;
    }
    
    function getEyes() public view returns (string memory){
        return driverdata.Eyes;
    }
    
    function getClass() public view returns (string memory){
        return driverdata.Class;
    }
}