# USE CASE 3:

# Step 1. Create Another Wallet [Cubix Sales Wallet]

	#command: 
		block_cypher.wallet_create("Cubix Sales Wallet")
	#response: 
		{"token"=>"db62a181113d4acd9d50b1234f216b39", "name"=>"Cubix Sales Wallet"}


# Step 2. Create Multi Sig Address 4
	
		# 1. Generate 3 address with Private and public keys 
		 
		 	addresses = {}	 
		 	addresses[:add1] = block_cypher.address_generate
		 	addresses[:add2] = block_cypher.address_generate
		 	addresses[:add3] = block_cypher.address_generate

		 	puts addresses 

		 	# Response 
		 		{
		 			:add1=>
					  {"private"=>"655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86",
					   "public"=>"02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
					   "address"=>"n1o3oZcyRGUKYGkvw9tNUpECSVQTtgu8fz",
					   "wif"=>"cQyjnsuyC82NcxvcBmTh4seDz3L5gMfP5TkCuVhi4NNcpBhZTLaZ"},
					:add2=>
					  {"private"=>"32f3a294233014efa426e08364ec365e72ca3ffcd10d0b8d790c6426f1825b7b",
					   "public"=>"02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
					   "address"=>"muE1cJLM25ByAhE8rbVhsF98BZMGCV8CDg",
					   "wif"=>"cPHkAiujeYiG3XaSgN8cEvQyRZY9dcFPKYXGvnhJbQft7JvCChjr"},
					:add3=>
					  {"private"=>"a05e28b5025207356d39c3ca90d2e9c638a9e056c6589583d408945c1f3b726b",
					   "public"=>"036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8",
					   "address"=>"n1egyNs5Ga7YcCk1rLUwsE4KZ2h3CxC3QP",
					   "wif"=>"cSxSDxpqpBqC14Q2yvRbzQmipQnkT61VuDSiNU9sy8K5XiCTcHD5"}
				}
	



		# 2. Get public keys 

		public_keys = [
			"02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
			"02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
			"036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"
		]	


		private_key = [
			'655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86',
			'32f3a294233014efa426e08364ec365e72ca3ffcd10d0b8d790c6426f1825b7b',
			'a05e28b5025207356d39c3ca90d2e9c638a9e056c6589583d408945c1f3b726b'
		]


		# 3. set script type

		script_type =  "multisig-2-of-3"


		# 4. Generate multi sign address

			block_cypher.address_generate_multi(public_keys, script_type)


		# Response 
		
		{"private"=>"",
		 "public"=>"",
		 "address"=>"2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk",
		 "pubkeys"=>
		  ["02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
		   "02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
		   "036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"],
		 "script_type"=>"multisig-2-of-3"
		}

		#5. Assign address 4 to Wallet	
	
		name = "Cubix%20Sales%20Wallet"
		addresses = ['2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk']
		block_cypher.wallet_add_addr(name, addresses)


		# Response
		{"token"=>"db62a181113d4acd9d50b1234f216b39", "name"=>"Cubix Sales Wallet", "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk"]}



	# Step 3 Send amount from Single Sign Address 1  to Single Sign Address 3

	from_address = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym'
	to_address = '2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk'
	satoshi_amount = 50
	private_key = 'd3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56'

	# Command 
	block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)	



	# Response 

		{"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"263bf4a0c58568e358753af46618605b9c3d1f78b8c4587b240abc718ee50c64",
   "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk", "n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
   "total"=>129713350,
   "fees"=>53900,
   "size"=>224,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-08T14:53:07.283667463Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>1,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"a80eb629ef75744b5f2866eb7769e13de1f4aa58d4168bd5f62087b419cb2665",
      "output_index"=>1,
      "script"=>
       "48304502210089ca04d9fbd9b493e65dfe70a46c2537ba83ec63d08a345baf1f9ebfc27e8e4e02205b5d091e2ebd246b72df7540ff19fdcb0df277a8ee722a99e3adbd1fc9b83c69012102ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
      "output_value"=>129767250,
      "sequence"=>4294967295,
      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
      "script_type"=>"pay-to-pubkey-hash",
      "age"=>1254212}],
   "outputs"=>
    [{"value"=>50,
      "script"=>"a914b397638c3542af5cffff97d96ab245cd853e54e987",
      "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk"],
      "script_type"=>"pay-to-script-hash"},
     {"value"=>129713300,
      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
      "script_type"=>"pay-to-pubkey-hash"}]},
 "tosign"=>[""]}




		# URL
		https://api.blockcypher.com/v1/btc/test3/addrs/2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk/balance?token=db62a181113d4acd9d50b1234f216b39


		# Response 

		{
			"address": "2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk",
			"total_received": 0,
			"total_sent": 0,
			"balance": 0,
			"unconfirmed_balance": 50,
			"final_balance": 50,
			"n_tx": 0,
			"unconfirmed_n_tx": 1,
			"final_n_tx": 1
			}