# -*- coding: binary -*-
require 'rex/proto/openvpn'

module Rex
module Proto
module OpenVPN

class Packet
	length # 16 bits, unsigned
	#opcode and key # 8 bits
	opcode # 5 bits
	key_id # 3 bits
	payload # n bytes, defined by length 
end

end
end
end
