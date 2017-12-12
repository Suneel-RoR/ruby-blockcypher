block_cypher = BlockCypher::Api.new
# USE CASE 2:

#Step 1  Create Another Wallet [Cubix Merchant Wallet]



	#command: 
		block_cypher.wallet_create("Cubix Merchant Wallet")
	#response: 
		{"token"=>"db62a181113d4acd9d50b1234f216b39", "name"=>"Cubix Merchant Wallet"}

#Step 2 Create Single Sign Address 3 for Wallet [Cubix Merchant Wallet]

	#command 
		block_cypher.wallet_gen_addr("Cubix%20Merchant%20Wallet")
	#response
		{"token"=>"db62a181113d4acd9d50b1234f216b39",
		 "name"=>"Cubix Merchant Wallet",
		 "addresses"=>["mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
		 "private"=>"aa282b61fae1eb5f2388e1915b58e0e9db05bda08922d4651ec37a172852cb50",
		 "public"=>"02380f98e087acc56f56822adeefa3f9bbe21150d052955dc504d7bdbd35ddade2",
		 "address"=>"mfnfGr221uqsJepbBzKspsHt25QCAayGi7",
		 "wif"=>"cTHTtdtjSK6g4HivJubK9ejS8VUvAbqk7Yh8mTRx9yGRzaXFCuJq"
		}

# Step 3 Send amount from Single Sign Address 1  to Single Sign Address 3

	from_address = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym'
	to_address = 'mfnfGr221uqsJepbBzKspsHt25QCAayGi7'
	satoshi_amount = 50
	private_key = 'd3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56'

	# Command 
	block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)


	# Response

	{"tx"=>
		{
			"block_height"=>-1,
		   "block_index"=>-1,
		   "hash"=>"a80eb629ef75744b5f2866eb7769e13de1f4aa58d4168bd5f62087b419cb2665",
		   "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym", "mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
		   "total"=>129767300,
		   "fees"=>54400,
		   "size"=>226,
		   "preference"=>"high",
		   "relayed_by"=>"117.20.16.30",
		   "received"=>"2017-12-08T13:45:05.508208931Z",
		   "ver"=>1,
		   "double_spend"=>false,
		   "vin_sz"=>1,
		   "vout_sz"=>2,
		   "confirmations"=>0,
		   "inputs"=>
		    [{"prev_hash"=>"b161def55b9bd315b03ea25bdae2242b897613cbe658160fbe1ee447316a79dd",
		      "output_index"=>1,
		      "script"=>
		       "483045022100de357632b658c882b2955ae8fb4bc59eaa5c5db719d74ecad6b323711da5b6c8022040a887b2676424d8d873dbbd12d28da28f010740b4457c5956a0920f131315d3012102ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		      "output_value"=>129821700,
		      "sequence"=>4294967295,
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash",
		      "age"=>1254210}],
		   "outputs"=>
		    [{"value"=>50,
		      "script"=>"76a91402f872763549d8c747ee8dba9149f14d505652be88ac",
		      "addresses"=>["mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
		      "script_type"=>"pay-to-pubkey-hash"},
		     {"value"=>129767250,
		      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash"}]
		},
 		"tosign"=>[""]
	}

# Step 4: Verify amount through both addresses transaction log


	https://api.blockcypher.com/v1/btc/test3/addrs/mfnfGr221uqsJepbBzKspsHt25QCAayGi7/balance?token=db62a181113d4acd9d50b1234f216b39


	#Response
	{
		"address": "mfnfGr221uqsJepbBzKspsHt25QCAayGi7",
		"total_received": 0,
		"total_sent": 0,
		"balance": 0,
		"unconfirmed_balance": 50,
		"final_balance": 50,
		"n_tx": 0,
		"unconfirmed_n_tx": 1,
		"final_n_tx": 1
	}

