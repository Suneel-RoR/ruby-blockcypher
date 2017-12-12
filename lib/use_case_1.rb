block_cypher = BlockCypher::Api.new

#USE CASE 1:

#Step 1. Create Wallet [Cubix Wallet]

	#command: 
		block_cypher.wallet_create("Cubix Wallet")
	#response: 
		{"token"=>"db62a181113d4acd9d50b1234f216b39", "name"=>"Cubix Wallet"}


# Step 2. Create Single Sign Address 1 for Wallet [Cubix Wallet]
	
	#command 
		block_cypher.wallet_gen_addr("Cubix%20Wallet")
	#response
		{"token"=>"db62a181113d4acd9d50b1234f216b39",
		 "name"=>"Cubix Wallet",
		 "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		 "private"=>"d3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56",
		 "public"=>"02ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		 "address"=>"n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym",
		 "wif"=>"cUfXvWDqPX2EnDW3RX2YkL2h46ktAJRzESbeiG8z3N8hJtqMq4vF"
		}

# Step 3. Add amount through sandbox in the wallet

	#command
	
		block_cypher.faucet("n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym", 1000)
	#response
		{"tx_ref"=>"987720cd75a4e0ba9787d73a370bd47aea3569046c26f3ad67f4428d79277587"}

# Step 4. Create Another Single Sign Address 2

	#command
		block_cypher.wallet_gen_addr("Cubix%20Wallet")

	#respone
		{"token"=>"db62a181113d4acd9d50b1234f216b39",
		 "name"=>"Cubix Wallet",
		 "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym", "mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB"],
		 "private"=>"75b694846e13356cf72dd8557ce67c59cad1c11e25a5089ce88ab26087a08014",
		 "public"=>"022ca5bcfb423c1bcc4011130e75966db778e9f77767cf047d5be053d7009f6479",
		 "address"=>"mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB",
		 "wif"=>"cRXX9ycDA4JX9qdNJ7bkqhdBvTsYRkb59FGoHBvHpKYzcYiLsvsv"
		}	
			
# Step 4. Send amount from Single Sign Address 1  to Single Sign Address 2
	
	
	from_address = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym' # Address 1
	to_address = 'mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB' # Address 2
	satoshi_amount = 50 # Amount to transfer
	# Address 1 private key
	private_key = 'd3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56'
	
	# Command 
	block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)


	# 1. send_money process work flow
		# -> Initialize transaction (from_address,to_address, amount) 
		# -> Transaction sign and send (tx_data, private_key)
		#    -> get public_key from private_key
		#    -> Add public_key to tx payload  
		#    -> signer(private_key, tosign_data)
		#    		-> get key from BitCoin service by providing private_key
		#    		-> encode and decode sign data using BitCoin service 
		#    		-> return signatures (that will used in completing transaction process)
		#    -> Add signatures to tx payload
		#    -> hit api post request transaction/send

	# Response 

	{"tx"=>
	   {
		   "block_height"=>-1,
		   "block_index"=>-1,
		   "hash"=>"18edfc34e2f2a6c89f940344b47b49ae97096f7ac5fd63cb5bda31a2a0ae2561",
		   "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym", "mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB"],
		   "total"=>129876200,
		   "fees"=>125800,
		   "size"=>522,
		   "preference"=>"high",
		   "relayed_by"=>"117.20.16.30",
		   "received"=>"2017-12-08T13:08:08.897025094Z",
		   "ver"=>1,
		   "double_spend"=>false,
		   "vin_sz"=>3,
		   "vout_sz"=>2,
		   "confirmations"=>0,
		   "inputs"=>
		    [{"prev_hash"=>"950dd5f7c2d0f47222112cd0dc825a1f75f4c9d3dc331b5fa37f0d89ce732003",
		      "output_index"=>0,
		      "script"=>
		       "483045022100ef323bba830fca6bfd1e0a71772700e4ec753e79d6f47eba88c9a2a73f51f26f02206140c065db01b1cd127e34646b7b7eb2f672ca14d6397c98dc2e328084d93fea012102ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		      "output_value"=>1000,
		      "sequence"=>4294967295,
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash",
		      "age"=>1254202},
		     {"prev_hash"=>"987720cd75a4e0ba9787d73a370bd47aea3569046c26f3ad67f4428d79277587",
		      "output_index"=>0,
		      "script"=>
		       "483045022100a4d03eabf20cf8382e21f84fb406a3210e158669812a61092d2404a3158b383302202dcadecd73817d18def835b246b0c8b675b6dd3ce6da3396c6a3371b53b8e2da012102ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		      "output_value"=>1000,
		      "sequence"=>4294967295,
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash",
		      "age"=>1254202},
		     {"prev_hash"=>"1c2a2da75e118cc2979b126749996a74f9f389a514e662915cd077e4ae716e70",
		      "output_index"=>0,
		      "script"=>
		       "483045022100e7c5d74cc12141c10a39f88916508bcc193c7fee0fc7c8f02265d2523cd6a90d0220524e83e2232d11d46ee649b719c848167eca8ec6879ccef14c2f7fa8e5d27ef3012102ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		      "output_value"=>130000000,
		      "sequence"=>4294967295,
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash",
		      "age"=>0}],
		   "outputs"=>
		    [{"value"=>50,
		      "script"=>"76a914ca1ec498b52430f7cfae9320a957858cf2fda6d688ac",
		      "addresses"=>["mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB"],
		      "script_type"=>"pay-to-pubkey-hash"},
		     {"value"=>129876150,
		      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
		      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		      "script_type"=>"pay-to-pubkey-hash"}
		    ]
	   },
	   "tosign"=>["", "", ""]
	}

# Step 4: Verify amount through both addresses transaction log


	https://api.blockcypher.com/v1/btc/test3/addrs/mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB/balance?token=db62a181113d4acd9d50b1234f216b39


	#Response
	{

		"address": "mywfebgWBpMzDE7tyjzuJujAVZZ4brxXiB",
		"total_received": 50,
		"total_sent": 0,
		"balance": 50,
		"unconfirmed_balance": 50,
		"final_balance": 100,
		"n_tx": 1,
		"unconfirmed_n_tx": 1,
		"final_n_tx": 2
	}
