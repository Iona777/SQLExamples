  DECLARE @childCompanyCustNo varchar(100) = 6833
  DECLARE @CustNumber int

       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  @CustNumber = parent_cust 
	FROM [BAPSDATA].[dbo].[customers]
	WHERE custnumber = @childCompanyCustNo -- enter the value here
	
	SELECT shortname as 'parent'  , custnumber as 'parent customer number', alt_ref as 'Parent alt ref'
	FROM [BAPSDATA].[dbo].[customers]
	WHERE custnumber = @CustNumber