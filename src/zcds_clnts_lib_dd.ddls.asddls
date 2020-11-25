@AbapCatalog.sqlViewName: 'ZCDS_V_CLNTS_LIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cantidad Venta de Libros'
define view zcds_clnts_lib_dd as select from ztb_clnts_lib_dd {
    key id_libro as ID_LIBRO,
        count( distinct id_cliente ) as Cuantos  
}
group by id_libro
