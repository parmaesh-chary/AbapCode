@AbapCatalog.sqlViewName: 'ZAK_DDIC_ASOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Associtaions'
define view ZAKP_I_SO_BP_ASOC as select from zakp_sale_order as _saleOrder
association [1] to ZAKP_I_BP as _BP
    on $projection.BuyerId = _BP.BpId
 {
    key _saleOrder.order_id as OrderId,
    _saleOrder.order_no as OrderNo,
    _saleOrder.buyer_id as BuyerId,
    _saleOrder.gross_amount as GrossAmount,
    _saleOrder.currency as Currency,
    _saleOrder.created_on as CreatedOn,
    _saleOrder.created_by as CreatedBy,
    _saleOrder.changed_on as ChangedOn,
    _saleOrder.changed_by as ChangedBy,
    _BP // Make association public
}
