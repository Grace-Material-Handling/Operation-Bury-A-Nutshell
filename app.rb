# app.rb

# Login to nutshell.
$nutshell = NutshellCrmAPI::Client.new($username, $apiKey)

# Backup Nutshell
$nutshell.new_backup()