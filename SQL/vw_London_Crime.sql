USE [London_Crime_Analysis]
GO

/****** Object:  View [dbo].[vw_London_Crime]    Script Date: 12/03/2026 21:15:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER view [dbo].[vw_London_Crime] as
select 
  case 
when cl.[Month] IS null then null
when LEN(cl.[Month]) =7
then cast(cl.[Month]+'-01' as date)
else
CAST(cl.[Month] as date)
end 
as Month_date

      ,cl.[Reported_by]
      ,cl.[Falls_within]
      ,cl.[Longitude]
      ,cl.[Latitude]
      ,cl.[Location]
      ,cl.[LSOA_code]
      ,cl.[LSOA_name]
      ,cl.[Crime_type]
      ,cl.[Last_outcome_category]
      ,cl.[Context]
      ,cl.[Borough]
from 	 [London_Crime_Analysis].[dbo].[Crime_Law] cl 
join Dim_Borough db on  cl.Borough=db.borough_name

GO


