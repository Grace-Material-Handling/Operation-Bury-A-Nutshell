# app.rb

# Login to nutshell.
$nutshell = NutshellCrmAPI::Client.new($username, $apiKey)

# Backup Nutshell
$nutshell.new_backup()

# Wait until backup is done
backup = {}
loop do
	backup = $nutshell.find_backups[0]
	if backup['status'].to_i == 1
		break
	else
		sleep(5)
	end
end

# Print backup link to console
puts "########################################################################"
puts "You can download this backup at #{backup['file']['uri']}."
puts "########################################################################"