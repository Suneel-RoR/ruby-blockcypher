satoshi_amount = 20
from_address = '2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk' # multisig address
to_address = 'n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym' # address 1

private_key = '655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86'  # first private key (cubix)

#command 
	block_cypher.send_money(from_address, to_address, satoshi_amount, private_key)

# resposne 

	errors: [
	    {
	      "error": "Error building input: Cannot use P2SH as input without 'script_type' set to 'multisig-n-of-m'"
	    },
	    {
	      "error": "Not enough funds in 1 inputs to pay for 1 outputs, missing -20."
	    },
	    {
	      "error": "Not enough funds after fees in 0 inputs to pay for 1 outputs, missing -18920."
	    },
	    {
	      "error": "Error validating generated transaction: Transaction missing input or output."
	    }
	]



# Next move 

payload = {
        'inputs' => [
          {
            addresses: ["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk"],
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: ["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
            value: satoshi_amount
          }
        ]

      } 


nwtx = block_cypher.transaction_new_custom(payload)


# response 

"errors": [
    {
      "error": "Error generating multisig address: Error decoding hex-encoded string 2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk: encoding/hex: odd length hex string."
    },
    {
      "error": "Not enough funds in 0 inputs to pay for 1 outputs, missing -20."
    },
    {
      "error": "Not enough funds after fees in 0 inputs to pay for 1 outputs, missing -18920."
    },
    {
      "error": "Error validating generated transaction: Transaction missing input or output."
    }
  ]



# Next move   

public_keys = [
			"02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
			"02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
			"036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"
		]

private_keys = [
	"655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86",
	"32f3a294233014efa426e08364ec365e72ca3ffcd10d0b8d790c6426f1825b7b",
	"a05e28b5025207356d39c3ca90d2e9c638a9e056c6589583d408945c1f3b726b"
]
	payload = {
        'inputs' => [
          {
            addresses: [
            "02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
			"02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
			"036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"
            	],
            script_type: "multisig-2-of-3"
          }
        ],
        'outputs' => [
          {
            addresses: ["mfnfGr221uqsJepbBzKspsHt25QCAayGi7"],
            value: 20
          }
        ]

      } 

   nwtx = block_cypher.transaction_new_custom(payload)   


   # response 

    {"tx"=>
  {"block_height"=>-1,
   "block_index"=>-1,
   "hash"=>"948410ac7ad4c1dff0e250048a4ee181bc0c5e5568dd46e8aa098d8a70f94419",
   "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk", "n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
   "total"=>64841350,
   "fees"=>158700,
   "size"=>158,
   "preference"=>"high",
   "relayed_by"=>"117.20.16.30",
   "received"=>"2017-12-08T15:09:14.499382097Z",
   "ver"=>1,
   "double_spend"=>false,
   "vin_sz"=>2,
   "vout_sz"=>2,
   "confirmations"=>0,
   "inputs"=>
    [{"prev_hash"=>"263bf4a0c58568e358753af46618605b9c3d1f78b8c4587b240abc718ee50c64",
      "output_index"=>0,
      "output_value"=>50,
      "sequence"=>4294967295,
      "addresses"=>
       ["02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
        "02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
        "036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"],
      "script_type"=>"multisig-2-of-3",
      "age"=>0},
     {"prev_hash"=>"944d3ddf0fb7d387763505fe24692647de028d00c9b6d1d1c99770638045757b",
      "output_index"=>0,
      "output_value"=>65000000,
      "sequence"=>4294967295,
      "addresses"=>
       ["02312f5a1b439991f9c2c2f7c3ef19853148df191d83f9b00de27ca7f97452be97",
        "02a7a8dd3b03580f02f74f0eaf22bcffd3fc28c5fe1783447a71d928452ca85391",
        "036da2ded31fcdc4bd2bc93961844d9a2f890dcef3cbd5a477747a98f3d0e81dd8"],
      "script_type"=>"multisig-2-of-3",
      "age"=>0}],
   "outputs"=>
    [{"value"=>20,
      "script"=>"76a914fc42ca828cb343caaa745d98f7d45e3613dedb4f88ac",
      "addresses"=>["n4Wnb7rwzqDPAF6kedxJHwrfAxBPPzSFym"],
      "script_type"=>"pay-to-pubkey-hash"},
     {"value"=>64841330,
      "script"=>"a914b397638c3542af5cffff97d96ab245cd853e54e987",
      "addresses"=>["2N9cpJJaTk1nZ9Z2tK4ALTcGJ1QdV5ipBxk"],
      "script_type"=>"pay-to-script-hash"}]},
 "tosign"=>["09bfbce5e82ba9eb68df62faa83ad70ae304d9a1ffe5c9f9dc975eea5b9655d0", "0584def909d12cac939323785bda02d2e10c80a83356b5e8c32abbf360d46cea"]}


 tosign = nwtx["tosign"]

# Cubix private key
 private_key = "655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86"


 signatures1 =  block_cypher.signer(private_key, tosign)

 ["304402207b5c3cdd0bcd34538bc3c0a2d20ec9ce3b2627e6641606b142401836f994359502201476ec896ff5b1e88b642a036f8e1f517701bd8406040aa0c56d949c9bb98d69",
 "304402207418c3b7469211a77d447c0c12d462a65e7861524590b175c8569090c095ff1a02200b22d72bb0c546c84327c73b0443d1c3a2e94bc3f23defa7a63228646802a0cf"]

# User private key
private_key2 =  "32f3a294233014efa426e08364ec365e72ca3ffcd10d0b8d790c6426f1825b7b"
signatures2 = block_cypher.signer(private_key2, tosign)

["304402204263a82e5e1b706095f5350feef145215e5671fdd000e755be8e4bd882b4867b022018387255fc4f08271d02bf8f96c5a3964f2bd81967408954e6dfb0ee42ac4184",
 "3044022062b33a321d3d5c54ea6949f8df7221396650d69f2d71a89093ec51b709947b22022038b76593de7d541cb567d56bbd25c631ced90076513b09c3c8d6c8ed6a2b4849"]

nwtx["signatures"] = signatures1
nwtx["pubkeys"] = ["655cff49ddd0ca1fde222093f5c4f417f683f740f990a17da936399ec3245b86",
	"32f3a294233014efa426e08364ec365e72ca3ffcd10d0b8d790c6426f1825b7b"]


sdcs = block_cypher.transaction_send_custom(nwtx)	