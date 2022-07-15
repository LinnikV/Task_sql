use test;
select P.product_name, P.product_img_url, P.product_url, P.product_price_min, P.product_short_description
from grommet_products as P
join grommet_product_categories as PC  on P.id = PC.product_id
join grommet_gifts_categories as GP on PC.product_category_id = GP.id
where GP.sub_category = 'Grilling' and not P.is_sold_out
union all
select P.product_name, P.product_img_url, P.product_url, P.product_price_min, P.product_short_description
from grommet_products as P
join grommet_product_categories as PC  on P.id = PC.product_id
join grommet_gifts_categories as GP on PC.product_category_id = GP.id
where GP.category = 'Outdoor Living' and not P.is_sold_out;