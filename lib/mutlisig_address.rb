def generate
	block_cypher = BlockCypher::Api.new
	multiSig = {public_keys: [], private_keys: [], addresses: [], wifs: [], multisigAddress: "" }
	3.times do |i|
		address = block_cypher.address_generate
		multiSig[:public_keys] << address["public"]
		multiSig[:private_keys] << address["private"]
		multiSig[:addresses] << address["address"]
		multiSig[:wifs] << address["wif"]
	end	
	script_type =  "multisig-2-of-3"
	address = block_cypher.address_generate_multi(multiSig[:public_keys], script_type)
	multiSig[:multisigAddress] = address["address"]
	multiSig
end	


def add_amount_multisig_address(address, amount)
	block_cypher = BlockCypher::Api.new
	block_cypher.faucet(address, amount)
end

def send_multisign_money(public_keys, to_address, amount, private_key, script_type = "multisig-2-of-3")
	block_cypher = BlockCypher::Api.new
	payload = {
        'inputs' => [
          {
            addresses: public_keys,
            script_type: script_type
          }
        ],
        'outputs' => [
          {
            addresses: [to_address],
            value: amount
          }
        ]

      } 

	nwtx = block_cypher.transaction_new_custom(payload)
	nwtx["signatures"] = block_cypher.signer(private_key, nwtx["tosign"] )
	finaltx = block_cypher.transaction_send_custom(nwtx)
end