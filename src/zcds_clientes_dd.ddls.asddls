@AbapCatalog.sqlViewName: 'ZCDS_V_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view zcds_clientes_dd
  as select from ztb_clientes_dd
{
      //ztb_clientes_dd
  key id_cliente  as Id_cliente,
  key tipo_acceso as Tipo_acceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url

}
