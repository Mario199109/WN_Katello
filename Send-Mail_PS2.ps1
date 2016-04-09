$EmailFrom = "notifications@somedomain.com"
$EmailTo = "me@earth.com" 
$Subject = "Notification from XYZ" 
$Body = "this is a notification from XYZ Notifications.." 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("username", "password"); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

# append to Christian's code above --^
$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = $EmailFrom
$emailMessage.To.Add($EmailTo)
$emailMessage.Subject = $Subject
$emailMessage.Body = $Body
$emailMessage.Attachments.Add("C:\Test.txt")
