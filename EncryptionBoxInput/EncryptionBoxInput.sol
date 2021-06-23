pragma ton-solidity >= 0.43.0;

interface IEncryptionBoxInput {

	function get(uint32 answerId, string prompt, string algorithm, TvmCell params) external returns (uint32 handle);
    function getSupportedAlgorithms() external returns (string[] names);
}

library EncryptionBoxInput {

	uint256 constant ID = 0x5b5f76b54d976d72f1ada3063d1af2e5352edaf1ba86b3b311170d4d81056d61;
	int8 constant DEBOT_WC = -31;

	function get(uint32 answerId, string prompt, string algorithm, TvmCell params) public pure {
		address addr = address.makeAddrStd(DEBOT_WC, ID);
		IEncryptionBoxInput(addr).get(answerId, prompt, algorithm, params);
	}

    function getSupportedAlgorithms() public pure {
		address addr = address.makeAddrStd(DEBOT_WC, ID);
		IEncryptionBoxInput(addr).getSupportedAlgorithms();
	}
}

contract EncryptionBoxInputABI is IEncryptionBoxInput {

	function get(uint32 answerId, string prompt, string algorithm, TvmCell params) external override returns (uint32 handle) {}
    function getSupportedAlgorithms() external override returns (string[] names) {}

}
