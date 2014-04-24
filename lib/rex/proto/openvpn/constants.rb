# -*- coding: binary -*-
require 'rex/proto/openvpn'

module Rex
module Proto
module OpenVPN

# packet opcode (high 5 bits) and key-id (low 3 bits) are combined in one byte
P_KEY_ID_MASK	= 0x07
P_OPCODE_SHIFT 	= 3

# packet opcodes -- the V1 is intended to allow protocol changes in the future
P_CONTROL_HARD_RESET_CLIENT_V1 = 1     # initial key from client, forget previous state
P_CONTROL_HARD_RESET_SERVER_V1 = 2     # initial key from server, forget previous state
P_CONTROL_SOFT_RESET_V1        = 3     # new key, graceful transition from old to new key
P_CONTROL_V1                   = 4     # control channel packet (usually TLS ciphertext)
P_ACK_V1                       = 5     # acknowledgement for packets received
P_DATA_V1                      = 6     # data channel packet

# indicates key_method >= 2
P_CONTROL_HARD_RESET_CLIENT_V2 = 7     # initial key from client, forget previous state
P_CONTROL_HARD_RESET_SERVER_V2 = 8     # initial key from server, forget previous state

# define the range of legal opcodes
P_FIRST_OPCODE	= 1
P_LAST_OPCODE 	= 8

end
end
end