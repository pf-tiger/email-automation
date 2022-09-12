#Replacer.ps1 by Taiga Tanaka
# define objects

#insert the full-path for your template text
$template_path = "template_path"
$company_name = "KIDTiger, LLC"
$company_abrv = "KID"
$sender_name = "Tiger"
$day = "13th"
$month = "June"
$year = "2022"

#actual replacing process
Get-Content  -Encoding UTF8 ./template.txt `
| ForEach-Object {$_ -replace "YYYY", $year} `
| ForEach-Object {$_ -replace "MM", $month} `
| ForEach-Object {$_ -replace "DD", $day} `
| ForEach-Object {$_ -replace "company_name", $company_name} `
| ForEach-Object {$_ -replace "sender_name", $sender_name} `
| ForEach-Object {$_ -replace "company_abrv", $company_abrv} `
| Out-File -Encoding UTF8 $company_abrv$month$year.txt -NoClobber


# ForEach-Object {$_ -replace "custom_text", $replacement_str }