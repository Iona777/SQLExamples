/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
STM.SalesTeamCode,
ST.Descript AS TeamDescription,
STM.UserCode,
U.full_name
  ,Case [RoleFlag]
   When 'A' then 'Admin'
   When 'M' then 'Manager'
   When 'H' then 'Head'
   When 'D' Then 'Director'
   Else RoleFlag
   End as Role
  FROM [BAPSDATA].[dbo].[SalesTeamManager] STM
 Join Bapsdata.dbo.SalesTeam ST on ST.Code = STM.SalesTeamCode 
 Join Bapsdata.dbo.users U on STM.UserCode = U.code
  order by roleflag