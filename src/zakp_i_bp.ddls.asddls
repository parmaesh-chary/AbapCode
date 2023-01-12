@AbapCatalog.sqlViewName: 'ZAKP_DDIC_BP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds view for bp'
define view ZAKP_I_BP as select from zakp_bp {
    key bp_id as BpId,
    bp_role as BpRole,
    company_name as CompanyName,
    street as Street,
    city as City,
    country as Country,
    region as Region
}
