window.addEventListener('load', async () => {
    // Connect to the Ethereum network through web3.js
    if (window.ethereum) {
        window.web3 = new Web3(window.ethereum);
        try {
            await window.ethereum.enable();
        } catch (error) {
            console.error('User denied account access');
        }
    } else if (window.web3) {
        window.web3 = new Web3(web3.currentProvider);
    } else {
        console.error('No Ethereum provider detected');
    }

    // Contract address and ABI
    const contractAddress = 'CONTRACT_ADDRESS'; // Replace with your deployed contract address
    const contractABI = [
        // Add the ABI of your deployed contract here
    ];

    // Contract instance
    const contract = new web3.eth.Contract(contractABI, contractAddress);

    // Function to display values in the frontend
    async function displayValues() {
        try {
            const firstValue = await contract.methods.firstValue().call();
            const secondValue = await contract.methods.secondValue().call();
            const result = await contract.methods.addValues().call();

            document.getElementById('firstValue').textContent = firstValue;
            document.getElementById('secondValue').textContent = secondValue;
            document.getElementById('result').textContent = result;
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    }

    // Function to update values in the smart contract
    async function updateValues() {
        const firstValue = parseInt(prompt('Enter the first value:'));
        const secondValue = parseInt(prompt('Enter the second value:'));

        try {
            const accounts = await web3.eth.getAccounts();
            await contract.methods.setValues(firstValue, secondValue).send({ from: accounts[0] });
            await displayValues();
        } catch (error) {
            console.error('Error updating values:', error);
        }
    }

    // Initial display of values
    await displayValues();
});
