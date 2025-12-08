#!/bin/sh
/opt/mssql-tools18/bin/sqlcmd \
    -C \
    -S localhost,1433 \
    -U sa \
    -P "YourStrong@Passw0rd" \
    -Q "RESTORE DATABASE AdventureWorks2022 \
       FROM DISK = N'/var/opt/mssql/backup/AdventureWorks2022.bak' \
       WITH MOVE 'AdventureWorks2022' TO '/var/opt/mssql/data/AdventureWorks2022.mdf', \
       MOVE 'AdventureWorks2022_Log' TO '/var/opt/mssql/data/AdventureWorks2022_Log.ldf', \
       REPLACE"

#/opt/mssql-tools18/bin/sqlcmd -C -S localhost,1433 -U sa -P "YourStrong@Passw0rd" -Q "RESTORE FILELISTONLY FROM DISK='/var/opt/mssql/backup/AdventureWorksDW2022.bak'"

/opt/mssql-tools18/bin/sqlcmd \
    -C \
    -S localhost,1433 \
    -U sa \
    -P "YourStrong@Passw0rd" \
    -Q "RESTORE DATABASE AdventureWorksDW2022 \
       FROM DISK = N'/var/opt/mssql/backup/AdventureWorksDW2022.bak' \
       WITH MOVE 'AdventureWorksDW2022' TO '/var/opt/mssql/data/AdventureWorksDW2022.mdf', \
       MOVE 'AdventureWorksDW2022_log' TO '/var/opt/mssql/data/AdventureWorksDW2022_log.ldf', \
       REPLACE"

#/opt/mssql-tools18/bin/sqlcmd -C -S localhost,1433 -U sa -P "YourStrong@Passw0rd" -Q "RESTORE FILELISTONLY FROM DISK='/var/opt/mssql/backup/AdventureWorksLT2022.bak'"

/opt/mssql-tools18/bin/sqlcmd \
    -C \
    -S localhost,1433 \
    -U sa \
    -P "YourStrong@Passw0rd" \
    -Q "RESTORE DATABASE AdventureWorksLT2022 \
       FROM DISK = N'/var/opt/mssql/backup/AdventureWorksLT2022.bak' \
       WITH MOVE 'AdventureWorksLT2022_Data' TO '/var/opt/mssql/data/AdventureWorksLT2022.mdf', \
       MOVE 'AdventureWorksLT2022_Log' TO '/var/opt/mssql/data/AdventureWorksLT2022_log.ldf', \
       REPLACE"
