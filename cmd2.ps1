#habilitando transferência de arquivos entre maquina local e virtual 
Get-VMIntegrationService -VMName 'hardoimVM' | where Name -match 'convidado' | Enable-VMIntegrationService

#copiando o arquivo
Copy-VMFile -ComputerName "PClocal" -Name "PCvirtual" -SourcePath 'path/to/file/local' -DestinationPath '/path/virtual' -FileSource Host