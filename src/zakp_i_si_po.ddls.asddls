@AbapCatalog.sqlViewName: 'ZAKP_I_I_PO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asoc'
define view ZAKP_I_SI_PO as select from zakp_sale_item as _items
association [1] to ZAKP_I_PROD as _products
    on $projection.Product= _products.ProdId {
    key _items.item_id as ItemId,
    _items.order_id as OrderId,
    _items.product as Product,
    _items.qty as Qty,
    _items.uom as Uom,
    _items.amount as Amount,
    _items.currency as Currency,
    _items.created_on as CreatedOn,
    _items.created_by as CreatedBy,
    _items.changed_on as ChangedOn,
    _items.changed_by as ChangedBy,
    
    _products // Make association public
}
