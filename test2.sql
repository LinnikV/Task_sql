use test;
select product_name, product_img_url, product_url, product_price_min, product_short_description
from grommet_products
join grommet_product_to_keyword on grommet_products.id = product_id
join grommet_product_keywords on grommet_product_keywords.id = keyword_id
where keyword in ('hair accessor', 'Aromatherapy') and not is_sold_out;
