block_cypher = BlockCypher::Api.new
pubkeys = ["018901345782344565678901234567890129012345678903456789012123456723", "01890134578234456567890123456789012901234567890345678901212345ASDF", "01890134578234456567890123456789QWER012345678903456789012123456723"]



addresses = []
script_type =  "multisig-2-of-3"
10.times do |t|
	pubkeys = [SecureRandom.hex(33), SecureRandom.hex(33), SecureRandom.hex(33)]
	addresses << block_cypher.address_generate_multi(pubkeys, script_type)
end	



