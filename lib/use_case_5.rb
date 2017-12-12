block_cypher = BlockCypher::Api.new
addresses = {}	 
		 	addresses[:add1] = block_cypher.address_generate
		 	addresses[:add2] = block_cypher.address_generate
		 	addresses[:add3] = block_cypher.address_generate



{:add1=>
  {"private"=>"2e2bc29b79d942545792d76baee4a14976705fb297740825f0ec4f27758edda1",
   "public"=>"020d52a83e35674906a01b456a23ebc637f2cf43f83c9991c26f7d6ad105c57c35",
   "address"=>"mxTKW5WJC6L7g7R1XYWLA7QJQNYjtcMCyv",
   "wif"=>"cP8TAUufUG8poktUtst1Yp2ru6qEUN7qX1ZPbaeekWJrGf3YGUm9"},
 :add2=>
  {"private"=>"44627d41fe54b7c966f9842cc4fc7322f157e54e95e868fb9ed25939774e2edb",
   "public"=>"0257d86dfdfc649bb8376b6615f00c62f02201e174629dc3b1c0c02e9dd8593294",
   "address"=>"mrGu6VX1Funvy9TdL1cwLdhmahD8VtoYKp",
   "wif"=>"cPsdeLwGqthLYKdPUnMXewXnQfzqemvQmbkwDCKXX5qv6tHg9jDs"},
 :add3=>
  {"private"=>"a458882db3d60231ae7c5e53a9afcda2fd17b34083667b29675bc29150fa5964",
   "public"=>"020214ce087d9c0cc42caf376a8b00823cccf27f224931b39043d10139b2d2fad3",
   "address"=>"n1MvkBFQ68B4FRxXvYhHJznLfveEDaKke5",
   "wif"=>"cT6Aiw5MwngZCmXTgaDDqN6n5PUoKezfRZjogsg4Gq8jq9ERZRn3"}}





script_type =  "multisig-2-of-3"

block_cypher.address_generate_multi(public_keys, script_type)


{"private"=>"",
 "public"=>"",
 "address"=>"2MvKz1Y87DEgzuhXDtqYtxXasHkkFViQ8J4",
 "pubkeys"=>
  ["020d52a83e35674906a01b456a23ebc637f2cf43f83c9991c26f7d6ad105c57c35",
   "0257d86dfdfc649bb8376b6615f00c62f02201e174629dc3b1c0c02e9dd8593294",
   "020214ce087d9c0cc42caf376a8b00823cccf27f224931b39043d10139b2d2fad3"],
 "script_type"=>"multisig-2-of-3"}

private_keys = [
	"2e2bc29b79d942545792d76baee4a14976705fb297740825f0ec4f27758edda1",
	"44627d41fe54b7c966f9842cc4fc7322f157e54e95e868fb9ed25939774e2edb",
	"a458882db3d60231ae7c5e53a9afcda2fd17b34083667b29675bc29150fa5964"

]   

public_keys = [
	"020d52a83e35674906a01b456a23ebc637f2cf43f83c9991c26f7d6ad105c57c35",
	"0257d86dfdfc649bb8376b6615f00c62f02201e174629dc3b1c0c02e9dd8593294",
	"020214ce087d9c0cc42caf376a8b00823cccf27f224931b39043d10139b2d2fad3"
] 

payload = {
        'inputs' => [
          {
            addresses: public_keys,
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: ["mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
            value: 10
          }
        ]

      } 

   nwtx = block_cypher.transaction_new_custom(payload)   


   # Response 




   signatures1 =  block_cypher.signer(private_keys.first, nwtx["tosign"] )



   signatures2 = block_cypher.signer(private_keys.second, nwtx["tosign"])



   nwtx["signatures"]  = signatures1 + signatures2


nwtx["pubkeys"] = [
	block_cypher.pubkey_from_priv(private_keys.first),
	block_cypher.pubkey_from_priv(private_keys.first),
	block_cypher.pubkey_from_priv(private_keys.first),
	block_cypher.pubkey_from_priv(private_keys.first),
	block_cypher.pubkey_from_priv(private_keys.first)
]
   nwtx["pubkeys"] = [block_cypher.pubkey_from_priv(private_keys.first), block_cypher.pubkey_from_priv(private_keys.second), block_cypher.pubkey_from_priv(private_keys.first), block_cypher.pubkey_from_priv(private_keys.second)]


   sdcs = block_cypher.transaction_send_custom(nwtx)
