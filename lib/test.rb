block_cypher = BlockCypher::Api.new
from = '2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk'

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



to = 'mfnfGr221uqsJepbBzKspsHt25QCAayGi7'		


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
            value: 50
          }
        ]

      } 
nwtx = block_cypher.transaction_new_custom(payload)   


{"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"21a657b8fdac65a9a5a7f495f312a0d4c32b94464586a39dd1d15dbc35a73ea0",
   "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk", "mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
   "total"=>64752630,
   "fees"=>88700,
   "size"=>117,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-08T17:19:50.135222398Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>1,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"a777fdae201d5b6150b528af2f6f14fc35fabe6c8cd666c5d8ca3626078b0610",
      "output_index"=>1,
      "output_value"=>64841330,
      "sequence"=>4294967295,
      "addresses"=>
       ["02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
        "02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
        "036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"],
      "script_type"=>"multisig-2-of-3",
      "age"=>1254224}],
   "outputs"=>
    [{"value"=>50,
      "script"=>"76a91402f872763549d8c747ee8dba9149f14d505652be88ac",
      "addresses"=>["mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
      "script_type"=>"pay-to-pubkey-hash"},
     {"value"=>64752580,
      "script"=>"a914b397638c3542af5cffff97d96ab245cd853e54e987",
      "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk"],
      "script_type"=>"pay-to-script-hash"}]},
 "tosign"=>["1b11d0f3e5750a57b8569212e3d75f6603ddfd7c87cca40140ed626746cd4db9"]}


 signatures1 =  block_cypher.signer(private_key.first, nwtx["tosign"] )
 ["30440220638c299da50dc85faed368e4337553f292aea33286e880d7217a66e6265928ec02204a96c72842689bc942210224bfa6b9675177269935f9ee2e9fdb30d0cbf1883a"]


 nwtx["pubkeys"] = [block_cypher.pubkey_from_priv(private_keys.first)]


 sdcs = block_cypher.transaction_send_custom(nwtx)