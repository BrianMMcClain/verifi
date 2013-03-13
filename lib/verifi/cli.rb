require "thor"
require "json"

module Verifi
  	module CLI
    	class Command < Thor

    		desc "version", "Get version info"
      		def version
        		require 'verifi/version'
        		puts Verifi::VERSION
      		end
      	end
    end
end