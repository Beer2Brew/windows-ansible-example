$p = Start-Process {{ disk_image_out.mount_path }}setup.exe -ArgumentList '/Q /ACTION=Install /IACCEPTSQLSERVERLICENSETERMS /ENU /UPDATEENABLED=false /FEATURES=SQLENGINE,AS,IS,Conn /INSTANCENAME=MSSQLSERVER /SECURITYMODE=SQL /SAPWD=Password1! /AGTSVCSTARTUPTYPE=automatic /BROWSERSVCSTARTUPTYPE=automatic /SQLSYSADMINACCOUNTS=sqladmin /SQLBACKUPDIR=C:\Backup /SQLUSERDBDIR=C:\Databases /SQLUSERDBLOGDIR=C:\UserDatabases' -wait -NoNewWindow -PassThru

$p.HasExited

$p.ExitCode