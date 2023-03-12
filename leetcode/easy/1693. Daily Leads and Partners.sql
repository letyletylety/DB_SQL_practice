SELECT date_id,
    make_name,
    count(DISTINCT lead_id) as unique_leads,
    count(DISTINCT partner_id) as unique_partners
from dailysales
GROUP BY date_id,
    make_name;