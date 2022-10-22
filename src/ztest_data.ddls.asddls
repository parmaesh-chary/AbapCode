@AbapCatalog.sqlViewName: 'ZTEST_TES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test'
define view ZTEST_DATA as select from  Y_459_VID_CDS{
key id,
travel,
operation,
change,
value,
dias

    
}
