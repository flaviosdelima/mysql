
update ps_product p,ps_specific_price ps set p.on_sale = 1 where ps.id_product=p.id_product 

update ps_product_shop p,ps_specific_price ps set p.on_sale = 1 where ps.id_product=p.id_product 
