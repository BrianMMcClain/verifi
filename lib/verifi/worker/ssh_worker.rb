require 'net/ssh'
require 'net/scp'

module Verifi::Worker
	class SSHWorker

		attr_reader :host, :username, :password, :ssh

		def initialize(host, username, password)
			@host = host
			@username = username
			@password = password

			@ssh = Net::SSH.start(@host, @username, :password => @password)
		end

		def execute_bash(cmd)
			stdout = ""
			channel = @ssh.open_channel do |ch|
				ch.exec cmd do |ch, success|
					raise "Could not execute #{cmd}" unless success

					ch.on_data do |c, data|
						stdout += data
					end
				end
			end

			channel.wait

			return stdout
		end

		def get_file(remote_path)
			
		end
	end