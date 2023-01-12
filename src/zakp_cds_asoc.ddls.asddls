@AbapCatalog.sqlViewName: 'ZTEST_ASOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association'
define view ZAKP_CDS_ASOC as select from 
zakp_bp as _bp association[0..*] to 
zakp_sale_order as _sale_orders
on $projection.bp_id = _sale_orders.buyer_id 
{
key _bp.bp_id,
    _bp.bp_role, 
    _bp.company_name, 
    _bp.street, 
    _bp.city ,
    _bp.country, 
    _bp.region,
    _sale_orders[inner].buyer_id,
    _sale_orders
    }
