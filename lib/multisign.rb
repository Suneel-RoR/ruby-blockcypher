block_cypher = BlockCypher::Api.new
# Generated by http://bip32.org/
pubkeys = ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283", "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0", "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"]
script_type =  "multisig-2-of-3"

# Generate multi sign address

block_cypher.address_generate_multi(pubkeys, script_type)



{"private"=>"",
 "public"=>"",
 "address"=>"2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2",
 "pubkeys"=>
  ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283",
   "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0",
   "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
 "script_type"=>"multisig-2-of-3"}


address = "2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"


from_address = '2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2'
private_key = '59ac57a4c4d73f35c6224e597ef3954d794682c5948d2e3ce5050eda6cda1c9b'
to_address = 'muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL'

satoshi_amount = 20

block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)

payload = {
        'inputs' => [
          {
            addresses: ["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: ["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
            value: satoshi_amount
          }
        ]

      }


payload = {
        'inputs' => [
          {
            addresses: ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283", "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0", "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: ["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
            value: satoshi_amount
          }
        ]

      }      


nwtx = block_cypher.transaction_new_custom(payload)


{"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"3c98ca92e99a2901828becd62b69994398298102a11dcefb5f555231240d5e19",
   "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2", "muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
   "total"=>3903900,
   "fees"=>158700,
   "size"=>158,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-06T17:11:25.439196835Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>2,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"8d12632aec83af849a2efa93be57d37d031b6a28b99a9b5ae8c94df2d5fd9a35",
      "output_index"=>0,
      "output_value"=>100,
      "sequence"=>4294967295,
      "addresses"=>
       ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283",
        "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0",
        "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
      "script_type"=>"multisig-2-of-3",
      "age"=>1253979},
     {"prev_hash"=>"09bce16aeb6a31909fcb60e2fd8217770a4c6caf85dc6d5956c708ca345ca055",
      "output_index"=>0,
      "output_value"=>4062500,
      "sequence"=>4294967295,
      "addresses"=>
       ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283",
        "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0",
        "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
      "script_type"=>"multisig-2-of-3",
      "age"=>0}],
   "outputs"=>
    [{"value"=>20,
      "script"=>"76a9149789c5472e1ae0085db18e0edc1cdb6222c7673788ac",
      "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
      "script_type"=>"pay-to-pubkey-hash"},
     {"value"=>3903880,
      "script"=>"a9143bc12ae7fc9849cb26f8b763e913fbcf7c2fc6ae87",
      "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
      "script_type"=>"pay-to-script-hash"}]},
 "tosign"=>["558757db00660cc640923cd830b293bc9f14db8e98eedf0ddf83669b6b4dfa86", "638e1a5fd89a61a619787ec7dd0865a29d9ab4e657eefcbe1ff425d2b7a68d8c"]
}


 tosign = nwtx["tosign"]

# Company's public key (assuming)
 private_key = "59ac57a4c4d73f35c6224e597ef3954d794682c5948d2e3ce5050eda6cda1c9b"


 signatures =  block_cypher.signer(private_key, tosign)
payload = {
	"tx"=>
	  {"block_height"=>-1,
	   "block_index"=>-1,
	   "hash"=>"3c98ca92e99a2901828becd62b69994398298102a11dcefb5f555231240d5e19",
	   "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2", "muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
	   "total"=>3903900,
	   "fees"=>158700,
	   "size"=>158,
	   "preference"=>"high",
	   "relayed_by"=>"117.20.16.30",
	   "received"=>"2017-12-06T17:11:25.439196835Z",
	   "ver"=>1,
	   "double_spend"=>false,
	   "vin_sz"=>2,
	   "vout_sz"=>2,
	   "confirmations"=>0,
	   "inputs"=>
	    [{"prev_hash"=>"8d12632aec83af849a2efa93be57d37d031b6a28b99a9b5ae8c94df2d5fd9a35",
	      "output_index"=>0,
	      "output_value"=>100,
	      "sequence"=>4294967295,
	      "addresses"=>
	       ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283",
	        "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0",
	        "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
	      "script_type"=>"multisig-2-of-3",
	      "age"=>1253979},
	     {"prev_hash"=>"09bce16aeb6a31909fcb60e2fd8217770a4c6caf85dc6d5956c708ca345ca055",
	      "output_index"=>0,
	      "output_value"=>4062500,
	      "sequence"=>4294967295,
	      "addresses"=>
	       ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283",
	        "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0",
	        "02f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b"],
	      "script_type"=>"multisig-2-of-3",
	      "age"=>0}],
	   "outputs"=>
	    [{"value"=>20,
	      "script"=>"76a9149789c5472e1ae0085db18e0edc1cdb6222c7673788ac",
	      "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
	      "script_type"=>"pay-to-pubkey-hash"},
	     {"value"=>3903880,
	      "script"=>"a9143bc12ae7fc9849cb26f8b763e913fbcf7c2fc6ae87",
	      "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
	      "script_type"=>"pay-to-script-hash"}]},
	 "tosign"=>["558757db00660cc640923cd830b293bc9f14db8e98eedf0ddf83669b6b4dfa86", "638e1a5fd89a61a619787ec7dd0865a29d9ab4e657eefcbe1ff425d2b7a68d8c"],
	 "signatures" => ["304402202ac80c59024683079b6edb41976b4dbd3d0b234f548c0b8e676f3fd275ddd3a2022034f371d8440602fd133d9cfe6194f1ef48f92764bc804783096358e845a404e8",
 "3045022100884257c922c64faa2a17aa2530bca1005892fb6cee932b5a059fb17afb6277b702207a1d653ec2c0153c5b14cf537b00d1567cc4c32aab86e931a77f214bbc3fb043"],
 "pubkeys" => ["03d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff283", "02200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c0"]
}

 sdcs = block_cypher.transaction_send_custom(payload)



 {"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"6ab3559f0081554cefe45d2440a025004aa8895a066afd0e79c1208ffb856149",
   "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2", "muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
   "total"=>3903900,
   "fees"=>158700,
   "size"=>519,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-06T17:36:59.191790003Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>2,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"8d12632aec83af849a2efa93be57d37d031b6a28b99a9b5ae8c94df2d5fd9a35",
      "output_index"=>0,
      "script"=>
       "0047304402202ac80c59024683079b6edb41976b4dbd3d0b234f548c0b8e676f3fd275ddd3a2022034f371d8440602fd133d9cfe6194f1ef48f92764bc804783096358e845a404e8014c69522103d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff2832102200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c02102f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b53ae",
      "output_value"=>100,
      "sequence"=>4294967295,
      "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
      "script_type"=>"pay-to-script-hash",
      "age"=>1253979},
     {"prev_hash"=>"09bce16aeb6a31909fcb60e2fd8217770a4c6caf85dc6d5956c708ca345ca055",
      "output_index"=>0,
      "script"=>
       "00483045022100884257c922c64faa2a17aa2530bca1005892fb6cee932b5a059fb17afb6277b702207a1d653ec2c0153c5b14cf537b00d1567cc4c32aab86e931a77f214bbc3fb043014c69522103d4271c9834c1c8282110a317c66e9488f106126bc038fd59878afe557aaff2832102200a661ffdf31f1b608b1eb495a85ce5650c40bcbf9167131196070df4a767c02102f8b7d238ca22c5b84aa9eac18fdb071b1b1461f48043298a86008347a44c4f2b53ae",
      "output_value"=>4062500,
      "sequence"=>4294967295,
      "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
      "script_type"=>"pay-to-script-hash",
      "age"=>0}],
   "outputs"=>
    [{"value"=>20,
      "script"=>"76a9149789c5472e1ae0085db18e0edc1cdb6222c7673788ac",
      "addresses"=>["muLDNVR4D3HDzZLmzoswr5jwzyy8cGNdUL"],
      "script_type"=>"pay-to-pubkey-hash"},
     {"value"=>3903880,
      "script"=>"a9143bc12ae7fc9849cb26f8b763e913fbcf7c2fc6ae87",
      "addresses"=>["2MxhBG83WaQ6JnjSL3RvS4vktiidY5QWPd2"],
      "script_type"=>"pay-to-script-hash"}]},
 "tosign"=>["", ""]}
