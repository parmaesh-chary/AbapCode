@AbapCatalog.sqlViewName: 'ZAKP_DDIC_PARAMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Parametres'
define view ZAKP_I_BP_PARAMS with parameters p_c : land1
as select from zakp_bp {

key bp_id as BpId,
bp_role as BpRole,
company_name as CompanyName,
street as Street,
city as City,
country as Country,
region as Region
    
} where country = $parameters.p_c
