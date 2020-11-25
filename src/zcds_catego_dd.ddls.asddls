@AbapCatalog.sqlViewName: 'ZCDS_V_CATEGO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categorias'
@Metadata.allowExtensions: true
define view zcds_catego_dd as select from ztb_catego_dd{
    key bi_categ as BI_CATEG,
        descripcion as DESCRIPCION
}
