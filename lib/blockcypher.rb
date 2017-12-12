block_cypher = BlockCypher::Api.new

pubkeys = ["02c716d071a76cbf0d29c29cacfec76e0ef8116b37389fb7a3e76d6d32cf59f4d3", "033ef4d5165637d99b673bcdbb7ead359cee6afd7aaf78d3da9d2392ee4102c8ea", "022b8934cc41e76cb4286b9f3ed57e2d27798395b04dd23711981a77dc216df8ca"]

script_type =  "multisig-2-of-3"

# Generate multi sign address

block_cypher.address_generate_multi(pubkeys, script_type)

# Response 
	
	{"private"=>"",
	 "public"=>"",
	 "address"=>"2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u",
	 "pubkeys"=>
	  ["02c716d071a76cbf0d29c29cacfec76e0ef8116b37389fb7a3e76d6d32cf59f4d3",
	   "033ef4d5165637d99b673bcdbb7ead359cee6afd7aaf78d3da9d2392ee4102c8ea",
	   "022b8934cc41e76cb4286b9f3ed57e2d27798395b04dd23711981a77dc216df8ca"],
	 "script_type"=>"multisig-2-of-3"
	}


# Get Address Balance 
address = "2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"
block_cypher.address_balance(address)

# Response 

	{"address"=>"2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u",
	 "total_received"=>16251000,
	 "total_sent"=>0,
	 "balance"=>16251000,
	 "unconfirmed_balance"=>0,
	 "final_balance"=>16251000,
	 "n_tx"=>2,
	 "unconfirmed_n_tx"=>0,
	 "final_n_tx"=>2
	}	


# Get address transactions 
address = "2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"
block_cypher.address_full_txs(address)



# Create Wallet and assign address to wallet

address = ["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"]
block_cypher.wallet_create('suneel-ruby-wallet', addresses)

# Response 

{"token"=>"db62a181113d4acd9d50b1234f216b39", "name"=>"suneel-ruby-wallet", "addresses"=>["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"]}


# Create a transcation to multisign wallet

input_addreses = ["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"] # created a address  
output_addresses = ["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"]
satoshi_amount = 100


new_tx = block_cypher.transaction_new(input_addreses, output_addresses, satoshi_amount)

# Response 

	{"tx"=>
	  {"block_height"=>-1,
	   "block_index"=>-1,
	   "hash"=>"5e58e53b0fe803c8a28384165825be7f76c8feb7d1334a6f80a495475e881f80",
	   "addresses"=>["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u", "mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"],
	   "total"=>64946100,
	   "fees"=>53900,
	   "size"=>117,
	   "preference"=>"high",
	   "relayed_by"=>"117.20.16.30",
	   "received"=>"2017-12-06T14:48:23.772686549Z",
	   "ver"=>1,
	   "double_spend"=>false,
	   "vin_sz"=>1,
	   "vout_sz"=>2,
	   "confirmations"=>0,
	   "inputs"=>
	    [{"prev_hash"=>"03c8a3ad372922b17be15f338de42473ef167bdb0af3d4ec9e297bd3143f4475",
	      "output_index"=>0,
	      "output_value"=>65000000,
	      "sequence"=>4294967295,
	      "addresses"=>["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"],
	      "script_type"=>"pay-to-pubkey-hash",
	      "age"=>0}],
	   "outputs"=>
	    [{"value"=>100,
	      "script"=>"a91468c5f5cd71b804f5071d527eee6b450013f5a0d187",
	      "addresses"=>["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"],
	      "script_type"=>"pay-to-script-hash"},
	     {"value"=>64946000,
	      "script"=>"76a914c48d93ceab0290ff95ba02551c98b4aafd8ab58888ac",
	      "addresses"=>["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"],
	      "script_type"=>"pay-to-pubkey-hash"}]},
	 "tosign"=>["439e2a19a820d95e44a28187ceb9e52e404aff4d3e336e82b1b4d2493d5d1dee"]
	}




# Transaction sign and send

  private_key = "15cc0ca65165c9d4f98b7a745357a9cf7daf5c859ac657d5dc830c428785f0bb"

 block_cypher.transaction_sign_and_send(new_tx, private_key)

 # Response 


	 {"tx"=>
	  {"block_height"=>-1,
	   "block_index"=>-1,
	   "hash"=>"d5ad2ac43c2450a6a2435638e7b029848f903da3d2940b81a67ceaac2c381872",
	   "addresses"=>["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f", "2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"],
	   "total"=>64946100,
	   "fees"=>53900,
	   "size"=>224,
	   "preference"=>"high",
	   "relayed_by"=>"117.20.16.30",
	   "received"=>"2017-12-06T14:57:32.760407441Z",
	   "ver"=>1,
	   "double_spend"=>false,
	   "vin_sz"=>1,
	   "vout_sz"=>2,
	   "confirmations"=>0,
	   "inputs"=>
	    [{"prev_hash"=>"03c8a3ad372922b17be15f338de42473ef167bdb0af3d4ec9e297bd3143f4475",
	      "output_index"=>0,
	      "script"=>
	       "4830450221009c23706e2ec80684cfb0453eb73ab9c22e65f44a2f8e573b243b07fa27ee9a0a0220510a8643aba4851a61178580a751b647bdd7dfac714d05c3a619aade425905ed0121023ec2037da4754d26da5a5e3d63233f2b36ba3a27ec6f3313663749d88161fe4e",
	      "output_value"=>65000000,
	      "sequence"=>4294967295,
	      "addresses"=>["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"],
	      "script_type"=>"pay-to-pubkey-hash",
	      "age"=>0}],
	   "outputs"=>
	    [{"value"=>100,
	      "script"=>"a91468c5f5cd71b804f5071d527eee6b450013f5a0d187",
	      "addresses"=>["2N2oDQkKp599VGCHVaeJuo5kgiHLdtDkB9u"],
	      "script_type"=>"pay-to-script-hash"},
	     {"value"=>64946000,
	      "script"=>"76a914c48d93ceab0290ff95ba02551c98b4aafd8ab58888ac",
	      "addresses"=>["mySELcyW8dMHro4V2TFMFsrQxapzbUmy5f"],
	      "script_type"=>"pay-to-pubkey-hash"}]},
	 "tosign"=>[""]
	}





	# Send money 

	from_address = 'muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL'
	private_key = '59ac57a4c4d73f35c6224e597ef3954d794682c5948d2e3ce5050eda6cda1c9b'
	to_address = 'mtHZqoViUDDNSFxCfNeuZu4P7SgwHoq2wv'
	block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)


	#Response

	{"tx"=>
	  {"block_height"=>-1,
	   "block_index"=>-1,
	   "hash"=>"4752e741d10931af63342091f1415c6b8536dace22ca76ad50b7b203886c0822",
	   "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL", "mtHZqoViUDDNSFxCfNeuZu4P7SgwHoq2wv"],
	   "total"=>16195600,
	   "fees"=>54400,
	   "size"=>226,
	   "preference"=>"high",
	   "relayed_by"=>"117.20.16.30",
	   "received"=>"2017-12-06T15:36:56.783959607Z",
	   "ver"=>1,
	   "double_spend"=>false,
	   "vin_sz"=>1,
	   "vout_sz"=>2,
	   "confirmations"=>0,
	   "inputs"=>
	    [{"prev_hash"=>"1c07eba1c39d7c3010f728efb2c87dfad568892c6168724715caba4a00e6a5dc",
	      "output_index"=>0,
	      "script"=>
	       "4830450221009c4184a90382975efa41daf555a361ff1c12132478e173ef3d414473874ab2650220105d62af6d3a70f1f8520deba4754de5ca10c1de54319d61cff269c29ed64e0f0121026fbda0218f80ba8f9bd237432d6d19e5a37e9cf5282925b085fab7f9d4ef1387",
	      "output_value"=>16250000,
	      "sequence"=>4294967295,
	      "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
	      "script_type"=>"pay-to-pubkey-hash",
	      "age"=>1253976}],
	   "outputs"=>
	    [{"value"=>100,
	      "script"=>"76a9148c117c354ba29072773472e4d3ecb870b681479688ac",
	      "addresses"=>["mtHZqoViUDDNSFxCfNeuZu4P7SgwHoq2wv"],
	      "script_type"=>"pay-to-pubkey-hash"},
	     {"value"=>16195500,
	      "script"=>"76a9149789c5472e1ae0085db18e0edc1cdb6222c7673788ac",
	      "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
	      "script_type"=>"pay-to-pubkey-hash"}]},
	 "tosign"=>[""]
	}
