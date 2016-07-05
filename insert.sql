INSERT INTO banco.tabela-destino (campo1, campo2, campo3...)
SELECT campo1,campo2,campo3... FROM banco.tabela-origem;


INSERT INTO banco.ps_product (reference,price, date_add,date_upd,weight,id_tax_rules_group)
select p1.products_id,p1.products_price,
case p1.products_date_added when null then current_date else p1.products_date_added end ,
case p1.products_last_modified when null then current_date else p1.products_last_modified end,
p1.products_weight,0 
from bancopublicacoes.osc_products p1;
