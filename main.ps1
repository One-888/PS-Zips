# Get files
$cmd_txt = gci *.pdf | Select-Object name

# Make a Compress Statement - Replace Extendtion from PDF to Zip
$cmd_txt | % { Invoke-Expression (" Compress-Archive -Path '" + ($_.Name)`
 + "' -Update -DestinationPath '" + ($_.Name-replace "pdf","zip") + "'")}




# Get Directories
$cmd_txt = gci -Directory | Select-Object name

# Make a Compress Statement Invoke-Expression
$cmd_txt | % {  Invoke-Expression (" Compress-Archive -Path '" + ($_.Name)`
 + "' -Update -DestinationPath '" + $_.Name + ".zip'")}
