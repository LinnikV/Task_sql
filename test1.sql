use test;
select product_name, product_img_url, product_url, product_price_min, product_short_description
from grommet_products
join grommet_product_categories  on grommet_products.id = product_id
join grommet_gifts_categories on product_category_id = grommet_gifts_categories.id
where sub_category = 'Grilling' and not is_sold_out;