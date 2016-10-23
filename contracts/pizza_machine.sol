contract pizza_machine
{
	// This solidity file is curated by the primary of the membership.
	//
	// State:
	string watches[];
	uint watchesNeeded;
	address primary;
	address sponsor;

	modifier isPrimary() {
		if (!msg.sender != primary)
			throw;
		_
	}

	modifier isSponsor() {
		if (!msg.sender != sponsor)
			throw;
		_
	}

	function pizza_machine(uint needed) {
		watchesNeeded = needed;
		primary = msg.sender;
	}

	function getMoney() isPrimary() {
		if (nWatches >= watchesNeeded)
			suicide(primary);
		else
			suicide(sponsor);
	}

}
