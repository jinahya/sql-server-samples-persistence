#!/bin/sh
#/opt/mssql-tools18/bin/sqlcmd -C -S localhost,1433 -U sa -P "YourStrong@Passw0rd" -Q "RESTORE FILELISTONLY FROM DISK='/var/opt/mssql/backup/AdventureWorks2022.bak'"

/opt/mssql-tools18/bin/sqlcmd -C -S localhost,1433 -U sa -P "YourStrong@Passw0rd" -Q "RESTORE FILELISTONLY FROM DISK='/var/opt/mssql/backup/AdventureWorksDW2022.bak'"

#/opt/mssql-tools18/bin/sqlcmd -C -S localhost,1433 -U sa -P "YourStrong@Passw0rd" -Q "RESTORE FILELISTONLY FROM DISK='/var/opt/mssql/backup/AdventureWorksLT2022.bak'"

