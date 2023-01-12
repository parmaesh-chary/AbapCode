@AbapCatalog.sqlViewName: 'ZAKP_I_DDIC_PROD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Products detais'
define view ZAKP_I_PROD as select from zakp_prod {

key prod_id as ProdId,
name as Name,
category as Category,
price as Price,
currency as Currency,
disocunt as Disocunt
    
}
