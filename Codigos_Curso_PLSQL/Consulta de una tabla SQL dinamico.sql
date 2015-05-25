DECLARE @IntVariable int;
DECLARE @SQLString nvarchar(500);
DECLARE @ParmDefinition nvarchar(500);

/* Build the SQL string one time.*/
SET @SQLString =
     'SELECT count(f200_rowid)
       FROM t200_mm_terceros
       WHERE f200_id_cia = @BusinessEntityID';
SET @ParmDefinition = N'@BusinessEntityID tinyint';
/* Execute the string with the first parameter value. */
SET @IntVariable = 2;
EXECUTE sp_executesql @SQLString, @ParmDefinition,
                      @BusinessEntityID = @IntVariable;
