 --From the Select Company screen, note the value of the Number column for the company you wnat the parent details of
 --Enter this value in custnumber field in the nested query
 
 --Company = London Borough of Tower Hamlets (SP Test)
 		SELECT shortname as 'parent'  , custnumber as 'parent customer number', alt_ref as 'Parent alt ref'
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = (SELECT  parent_cust
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = 368811 -- enter the value here
					) 
--Company = Geberit Sales Ltd
			SELECT shortname as 'parent'  , custnumber as 'parent customer number', alt_ref as 'Parent alt ref'
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = (SELECT  parent_cust
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = 6833 -- enter the value here
					) 
--Compamy = KPMG
			SELECT shortname as 'parent'  , custnumber as 'parent customer number', alt_ref as 'Parent alt ref'
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = (SELECT  parent_cust
					FROM [BAPSDATA].[dbo].[customers]
					WHERE custnumber = 2421 -- enter the value here
					) 