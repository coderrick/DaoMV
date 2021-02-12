
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
import 'Randomness.sol';
import 'Randomness.sol.old';

contract GenerateDLN{
    uint256[] public DrivesLicenseNumber;

    function createDLN() external {

        vrf.getRandomNumber(8983);

        while(vrf.randIndex() != true) {
            uint256 DLNdigit = vrf.randomResult() % 2;
            DrivesLicenseNumber.push(DLNdigit);
            vrf.resetRandomIndex();
        }
    }
}
    