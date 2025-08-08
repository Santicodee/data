select 
EngagementID,
ContentID,
CampaignID,
UPPER(replace(ContentType, 'SocialMedia', 'Social Media')) as ContentType,
left (ViewsCLicksCombined, charindex('-', ViewsClicksCombined) -1) as  Views,
right (ViewsClicksCombined, len(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) as Clicks,
format(convert(date, EngagementDate), 'dd.MM.yyyy') as EngagementDate

from
engagement_data

where ContentType != 'newsletter'

