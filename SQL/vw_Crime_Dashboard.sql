USE [London_Crime_Analysis]
GO

/****** Object:  View [dbo].[vw_Crime_Dashboard]    Script Date: 12/03/2026 21:11:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER view [dbo].[vw_Crime_Dashboard] as
select 
  case 
    when cl.[Month] IS null then null
    when LEN(cl.[Month]) =7
    then cast(cl.[Month]+'-01' as date)
else
CAST(cl.[Month] as date)
end 
as Month_date

      ,cl.[Crime_type]
      ,cl.[Borough]
      ,COUNT(*) as Crime_Count
from 	 [London_Crime_Analysis].[dbo].[Crime_Law] cl 
join Dim_Borough db on  cl.Borough=db.borough_name
group by Crime_type,Month,Borough

GO


