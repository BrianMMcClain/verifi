module Verifi::Verifier
	class FileVerifier
		attr_reader :ssh_worker

		def initialize(ssh_worker)
			@ssh_worker = ssh_worker
		end

		def file_exists(remote_path)
			cmd = "if [ -f #{remote_path} ]; then echo \"true\"; else echo \"false\"; fi"
			out = @ssh_worker.execute_bash(cmd)
			out.downcase == "true" ? return true : retuen false
		end
	end
end