pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
import 'Randomness.sol';
import 'Randomness.sol.old';

contract GenerateVisionTest{
    uint256[] public VisionTestChartLetters;

    function createVisonTestChart() external {

        vrf.getRandomNumber(8983);

        while(vrf.randIndex() != true) {
            uint256 letter = vrf.randomResult() % 2;
            VisionTestChartLetters.push(letter);
            vrf.resetRandomIndex();
        }
    }
}