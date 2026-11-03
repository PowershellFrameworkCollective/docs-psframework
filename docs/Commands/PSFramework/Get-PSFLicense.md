---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Get-PSFLicense
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSFLicense
---

# Get-PSFLicense

## Synopsis

Returns registered licenses

## Syntax

### __AllParameterSets

```
Get-PSFLicense [[-Filter] <string>] [-ProductType <ProductType[]>] [-LicenseType <LicenseType>]
 [-Manufacturer <string>] [<CommonParameters>]
```

## Description

Returns all matching licenses from the PSFramework internal license cache.

## Examples

### EXAMPLE 1

```powershell
Get-PSFLicense *Microsoft*
```

Returns all registered licenses for products with the string "Microsoft" in their name

### EXAMPLE 2

```powershell
Get-PSFLicense -LicenseType Commercial -ProductType Library
```

Returns a list of all registered licenses for products that have commercial licenses and are libraries.

## Parameters

### Filter

Default: "*"
Filters for the name of the product.
Uses the -like operator.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases:
- Product
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### LicenseType

Only licenses of any matching type are returned.

```yaml
Type: PSFramework.License.LicenseType
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Manufacturer

Default: "*"
Only licenses for products of a matching manufacturer are returned.
Uses the -like operator for comparisons.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ProductType

Only licenses of products for any of the specified types are considered.

```yaml
Type: PSFramework.License.ProductType[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


