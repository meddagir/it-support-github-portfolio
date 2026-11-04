# Active Directory Administration Lab

A **read-only** AD inventory sample. Requires an authorized Windows domain lab with RSAT ActiveDirectory module. It does not create or change users.

## Run

```powershell
Import-Module ActiveDirectory
.\scripts\Get-LabADInventory.ps1 -SearchBase 'OU=Lab,DC=example,DC=test'
```

Replace the sample distinguished name with your own **lab OU**. No domain controller or client access is included.

## Skills
AD DS, LDAP search bases, user inventory, least privilege.
