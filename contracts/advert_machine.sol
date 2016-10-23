contract advert_machine
{
	// This solidity file is curated by the advertiser. The advertiser
	// decides how many videos the participants must watch. The
	// advertiser decides how long the video is, and if they want to
	// to ask for certain required information such as name and email.
	//
	// If the viewer meets the demands of the contract, the contract
	// issues a time-sensitive token. That token much be 'notarized'
	// by the viewer and return to the pizza_machine for verification.
	//
	// State:
	string videos[];
	struct View {
		string name;
		string email;
		string url;
		uint timestamp;
	};
	View views[];
	bool name_required;
	bool email_required;

	function advert_machine(string video, bool nm_req, bool em_req)
	{
		videoURL = video;
		name_required = nm_req;
		email_required = em_req;
	}

	function show_me_a_video(string name, string email)
	{
	}

}
