var provider;
var signer;
var ScheDappAddress;
var ScheDappAbi;
var ScheDappContract;
var cEthCompoundAddress;
var cEthCompoundAbi;
var cEthCompoundContract;

$(document).ready(async function intFn() {
  provider = new ethers.providers.Web3Provider(window.ethereum);
  signer = provider.getSigner(0);
  console.log("signer=", signer);
  console.log("provider=", provider);

  try {
    // ScheDapp Contract
    ScheDappAddress = "0x958Eb4058a813daC20d875d3990cbb044B826ED8";
    ScheDappAbi = await (await fetch('./abis/ScheDapp.json')).json();
    ScheDappContract = new ethers.Contract(ScheDappAddress, ScheDappAbi.abi, signer);

    // cEth Compound Contract
    cEthCompoundAddress = "0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5";
    cEthCompoundAbi = await (await fetch('./abis/compoundCEthContractAbi.json')).json();
    cEthCompoundContract = new ethers.Contract(cEthCompoundAddress, cEthCompoundAbi, signer);
  } catch (err) {
    console.error(err);
  }

  getFee().then(minFee => {
    $('#feeValue').attr('min', minFee);
    $('#feeValue').val(minFee);
  });
});

async function getFee() {
  return ethers.utils.formatEther(await ScheDappContract.fee());
}

async function initMetamaskWallet() {
  const [address] = await window.ethereum.request({ method: 'eth_accounts' });
  window.localStorage.setItem("connectedAddress", address);

  console.log("b = ", ethers.utils.formatEther(await provider.getBalance(address)));
  console.log("made it");

  return address;
}