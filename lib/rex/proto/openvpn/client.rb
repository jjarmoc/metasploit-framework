# -*- coding: binary -*-
require 'rex/proto/openvpn'

module Rex
module Proto
module OpenVPN

class Client
	attr_accessor :session_id
	attr_accessor :r_session_id

	attr_accessor :rhost
	attr_accessor :rport

	def initialize(rhost, rport)
		@rhost = rhost
		@rport = rport
	end

end

end
end
end


