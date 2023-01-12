@AbapCatalog.sqlViewName: 'ZAKPTEST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: false
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tesing preserve key'
define view ZAKP_TEST as select from zakp_bp {
   key bp_id as BpId,
   bp_role as BpRole,  
    company_name as CompanyName,
    street as Street,
    city as City,
    country as Country,
    region as Region
}
