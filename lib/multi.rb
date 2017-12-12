{"token"=>"db62a181113d4acd9d50b1234f216b39",
		 "name"=>"Cubix Wallet",
		 "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
		 "private"=>"d3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56",
		 "public"=>"02ec72c12d43d20cf154f635c181e2d4dbb4267d93290bdcafa491e5b6633e7ce1",
		 "address"=>"n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym",
		 "wif"=>"cUfXvWDqPX2EnDW3RX2YkL2h46ktAJRzESbeiG8z3N8hJtqMq4vF"
}


from_address  = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym'
private_key = 'd3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56'

block_cypher = BlockCypher::Api.new

addresses = {}	 
addresses[:add1] = block_cypher.address_generate
addresses[:add2] = block_cypher.address_generate
addresses[:add3] = block_cypher.address_generate


addresses = {
  :add1=>
  {"private"=>"5dba93f88d206b58cc74da140e94ef3a6dbbb0b686cbda844903f080fe3f886d",
   "public"=>"02247c9fd2783f4279578f01bf9cf209f6ae6a9000ac191231e975f3bf144a857d",
   "address"=>"mpftH1qUyu4FyKBz4ayjwUjG7T5XBpKmqK",
   "wif"=>"cQiu3s1Vbh8MU8DLBv6RMSnm4tA7582FYZmDcVrKsAtEQjDYAGiU"},
 :add2=>
  {"private"=>"73ba98cc8b76ccfe606809ae81be7accf73674e18894223de5620dd63486810b",
   "public"=>"02b278a8f0adf80bfaead757ab3b34383ec7ce556822b9fe92b5e5e55293ee6fc4",
   "address"=>"mtt1KP69Y2uPcaSjSab5qYhaBr9abPkYB5",
   "wif"=>"cRTfSE3xzZ4BpzoUyXso72aUSVuSkPNEUuz9v1eiuRcFSdG8qBVy"},
 :add3=>
  {"private"=>"2d00c5778a3f20b5e37782c43b876c880d7cc213dfcc08fb4e5d9c3693f0d1a8",
   "public"=>"02669b691a7df47d437657060c2f493aa45d2e9d358be8204e19bc93dfd13b236f",
   "address"=>"mhPDjiWXycyvunXhKKiqRgBzYxhSB5xzCo",
   "wif"=>"cP6BVDLsxxvG16VYXtNt1Q1aRz55HKgA9jEFWV7i2mXjQJDVyGK4"}
}


public_keys = [
	'02247c9fd2783f4279578f01bf9cf209f6ae6a9000ac191231e975f3bf144a857d',
	'02b278a8f0adf80bfaead757ab3b34383ec7ce556822b9fe92b5e5e55293ee6fc4',
	'02669b691a7df47d437657060c2f493aa45d2e9d358be8204e19bc93dfd13b236f'
]

private_keys = [
	'5dba93f88d206b58cc74da140e94ef3a6dbbb0b686cbda844903f080fe3f886d',
	'73ba98cc8b76ccfe606809ae81be7accf73674e18894223de5620dd63486810b',
	'2d00c5778a3f20b5e37782c43b876c880d7cc213dfcc08fb4e5d9c3693f0d1a8'
]

to_address  = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym'
private_key = 'd3590340315b209d38d90d6e3768448f2986151440c6756e2b782617131aab56'
satoshi_amount = 1000000

script_type =  "multisig-2-of-3"

multisigAddress = block_cypher.address_generate_multi(public_keys, script_type)

	{"private"=>"",
	 "public"=>"",
	 "address"=>"2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1",
	 "pubkeys"=>
	  ["02247c9fd2783f4279578f01bf9cf209f6ae6a9000ac191231e975f3bf144a857d",
	   "02b278a8f0adf80bfaead757ab3b34383ec7ce556822b9fe92b5e5e55293ee6fc4",
	   "02669b691a7df47d437657060c2f493aa45d2e9d358be8204e19bc93dfd13b236f"],
	 "script_type"=>"multisig-2-of-3"
	}



payload = {
        'inputs' => [
          {
            addresses: public_keys,
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: [to_address],
            value: 130000
          }
        ]

      } 
      
nwtx = block_cypher.transaction_new_custom(payload)


	{"tx"=>
	  {"block_height"=>-1,
	   "block_index"=>-1,
	   "hash"=>"ec81225ac1a20651553afee158990d1183910ec3d72de817c18ad94284440f89",
	   "addresses"=>["2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1", "n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
	   "total"=>129830100,
	   "fees"=>169900,
	   "size"=>117,
	   "preference"=>"high",
	   "relayed_by"=>"117.20.16.30",
	   "received"=>"2017-12-11T11:23:07.258351648Z",
	   "ver"=>1,
	   "double_spend"=>false,
	   "vin_sz"=>1,
	   "vout_sz"=>2,
	   "confirmations"=>0,
	   "inputs"=>
	    [{"prev_hash"=>"a6194a87150a97e15927e43b758927d34b51c64f359b638faa88036de1812bbd",
	      "output_index"=>0,
	      "output_value"=>130000000,
	      "sequence"=>4294967295,
	      "addresses"=>
	       ["02247c9fd2783f4279578f01bf9cf209f6ae6a9000ac191231e975f3bf144a857d",
	        "02b278a8f0adf80bfaead757ab3b34383ec7ce556822b9fe92b5e5e55293ee6fc4",
	        "02669b691a7df47d437657060c2f493aa45d2e9d358be8204e19bc93dfd13b236f"],
	      "script_type"=>"multisig-2-of-3",
	      "age"=>1254522}],
	   "outputs"=>
	    [{"value"=>130000,
	      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
	      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
	      "script_type"=>"pay-to-pubkey-hash"},
	     {"value"=>129700100,
	      "script"=>"a9144472b9629470735210045b27a9cce06309cb4dd487",
	      "addresses"=>["2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1"],
	      "script_type"=>"pay-to-script-hash"}]},
	 "tosign"=>["ae5bd41f68a9080dbe81436d4bc36f01ceeeb43def24bf79b5543de840624d7a"]}


signatures =  block_cypher.signer(private_keys.first, nwtx["tosign"] )	 

["3045022100962d9df777c107cc007f5589f3808f21b39e3f1c67fb103508652b9396d73c50022024b2c804dfc819ce4873ab70a592d81f36b4cb798fd5869ecfc19b7ab1bf775a"]


nwtx["signatures"] = signatures


keySend = block_cypher.transaction_send_custom(nwtx)

{"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"4c122b607eb1bc9536fd720440dca34b5ca8cb2162b3b6884514c36b45f7f57e",
   "addresses"=>["2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1", "n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
   "total"=>129830100,
   "fees"=>169900,
   "size"=>298,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-11T11:27:15.471406886Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>1,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"a6194a87150a97e15927e43b758927d34b51c64f359b638faa88036de1812bbd",
      "output_index"=>0,
      "script"=>
       "00483045022100962d9df777c107cc007f5589f3808f21b39e3f1c67fb103508652b9396d73c50022024b2c804dfc819ce4873ab70a592d81f36b4cb798fd5869ecfc19b7ab1bf775a014c69522102247c9fd2783f4279578f01bf9cf209f6ae6a9000ac191231e975f3bf144a857d2102b278a8f0adf80bfaead757ab3b34383ec7ce556822b9fe92b5e5e55293ee6fc42102669b691a7df47d437657060c2f493aa45d2e9d358be8204e19bc93dfd13b236f53ae",
      "output_value"=>130000000,
      "sequence"=>4294967295,
      "addresses"=>["2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1"],
      "script_type"=>"pay-to-script-hash",
      "age"=>1254522}],
   "outputs"=>
    [{"value"=>130000,
      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
      "script_type"=>"pay-to-pubkey-hash"},
     {"value"=>129700100,
      "script"=>"a9144472b9629470735210045b27a9cce06309cb4dd487",
      "addresses"=>["2MyV9NW7nXj7Cn64JfpW35jZCLq7yHVRgM1"],
      "script_type"=>"pay-to-script-hash"}]},
 "tosign"=>[""]}