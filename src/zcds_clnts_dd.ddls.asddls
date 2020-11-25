@AbapCatalog.sqlViewName: 'ZCDS_V_CLNTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes x libros'
@Metadata.allowExtensions: true
define view zcds_clnts_dd
  as select from ztb_clnts_lib_dd as _LClientes
  association [0..*] to zcds_clientes_dd as _Clientes on _LClientes.id_cliente = _Clientes.Id_cliente
{
      //ztb_clnts_lib_dd
  key id_cliente as Id_cliente,
  key id_libro   as Id_libro,
  _Clientes

}
