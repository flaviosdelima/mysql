INSERT INTO banco.`ps_customer` 
(`id_old`, `id_shop_group`, `id_shop`, `id_gender`, `id_default_group`, `id_lang`, `id_risk`, 
`company`, `siret`, `ape`, `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, 
`newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`, 
`outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`, `note`, `active`, 
`is_guest`, `deleted`, `date_add`, `date_upd`, `document`, `rg_ie`, `doc_type`) 

SELECT customers_id,1,1, case lower(customers_gender) when 'f' then 2 else 1 end,
3,3,0,customers_razao,NULL, NULL,  customers_firstname, customers_lastname, 
customers_email_address, 'f8c334c970cfa163a2b6bc92b08c8491', '2016-07-25 08:18:35', 
customers_dob,0,'177.96.214.87', '2016-07-25 11:18:35', 1, NULL, 0.000000, 0, 0,  
 'a3e22855e5ea0931251c42394ac22c5f', NULL, 1, 0, 0, '2016-07-25 11:18:35', '2016-07-25 11:18:35',
case lower(customers_tipo) when 'f' then customers_cpf else customers_cnpj end, 
case lower(customers_tipo) when 'f' then null else customers_ie end,     
case lower(customers_tipo) when 'f' then '2' else '1' end
FROM banco2.osc_customers 
 
--------------------------------------------------------------
INSERT INTO shedd.`ps_address` ( `id_country`, `id_state`, `id_customer`, 
`id_manufacturer`, `id_supplier`, `id_warehouse`, `alias`, `company`, `lastname`, `firstname`, 
`address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, 
`date_add`, `date_upd`, `active`, `deleted`, `numend`, `compl`) 
SELECT 58,
(select ss.id_state from sheddpublicacoes.osc_zones z 
inner join shedd.ps_state ss on ss.iso_code = z.zone_code	 
where z.zone_id=spa.entry_zone_id limit 1),
(select sc.id_customer from shedd.ps_customer sc where sc.id_old= spa.customers_id limit 1),
 0, 0, 0, 'Meu endereço', spa.entry_company,spa.entry_lastname,spa.entry_firstname,
spa.entry_street_address, spa.entry_suburb, 
spa.entry_postcode, spa.entry_city ,'',spc.customers_telephone,spc.customers_fax,'','',
current_timestamp,current_timestamp, 1, 0, ',', ''

FROM sheddpublicacoes.osc_address_book spa
inner join sheddpublicacoes.osc_customers spc 
on spa.customers_id = spc.customers_id
