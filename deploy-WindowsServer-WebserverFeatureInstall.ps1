$WebserverFeatures = 
"FileAndStorage-Services",                                                                   
"File-Services",                                                                             
"FS-FileServer",                                                                             
"Storage-Services",                                                                          
"Web-Server",                                                                                
"Web-WebServer",                                                                             
"Web-Common-Http",                                                                           
"Web-Default-Doc",                                                                           
"Web-Dir-Browsing",                                                                          
"Web-Http-Errors",                                                                           
"Web-Static-Content",                                                                       
"Web-Health",                                                                                
"Web-Http-Logging",                                                                          
"Web-Performance",                                                                           
"Web-Stat-Compression",                                                                      
"Web-Security",                                                                             
"Web-Filtering",                                                                            
"Web-App-Dev",                                                                               
"Web-Net-Ext",                                                                              
"Web-Net-Ext45",                                                                           
"Web-Asp-Net",                                                                              
"Web-Asp-Net45",                                                                            
"Web-ISAPI-Ext",                                                                             
"Web-ISAPI-Filter",                                                                          
"Web-Mgmt-Tools",
"Web-Mgmt-Service",                                                                            
"Web-Mgmt-Console",                                                                          
"NET-Framework-Features",                                                                    
"NET-Framework-Core",                                                                        
"NET-Framework-45-Features",                                                                 
"NET-Framework-45-Core",                                                                     
"NET-Framework-45-ASPNET",                                                                   
"NET-WCF-Services45",                                                                        
"NET-WCF-HTTP-Activation45",                                                                 
"NET-WCF-MSMQ-Activation45",                                                                 
"NET-WCF-Pipe-Activation45",                                                                 
"NET-WCF-TCP-Activation45",                                                                  
"NET-WCF-TCP-PortSharing45",                                                                 
"MSMQ",                                                                                      
"MSMQ-Services",                                                                             
"MSMQ-Server",                                                                               
"FS-SMB1",                                                                                   
"User-Interfaces-Infra",                                                                     
"Server-Gui-Mgmt-Infra",                                                                     
"Server-Gui-Shell",                                                                          
"PowerShellRoot",                                                                            
"PowerShell",                                                                                
"PowerShell-V2",                                                                             
"PowerShell-ISE",                                                                          
"WAS",                                                                                       
"WAS-Process-Model",                                                                         
"WAS-Config-APIs",                                                                           
"Windows-Server-Backup",                                                                     
"WoW64-Support"         

foreach ($Feature in $WebserverFeatures)
{

    Install-WindowsFeature -Name $Feature

}

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WebManagement\Server /v EnableRemoteManagement /t REG_DWORD /d 00000001 /f
net start WMSVC
CMD /C "sc config WMSVC start= auto"