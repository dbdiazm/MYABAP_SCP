@AbapCatalog.sqlViewName: 'ZCD_V_LIBROSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Listado de libros'
@Metadata.allowExtensions: true
define view ZCDS_I_LIBROS as select from zcds_libros_dd as _Libros 
   association [0..1] to zcds_clnts_lib_dd as _Ventas on _Libros.Id_libro = _Ventas.ID_LIBRO
   association [0..*] to zcds_clnts_dd as _LClientes on _Libros.Id_libro = _LClientes.Id_libro
  {    
  key Id_libro  as Id_libro,
  key Bi_categ  as Bi_categ,
  Titulo        as Titulo,
  Autor         as Autor,
  Editorial     as Editorial,
  Idioma        as Idioma,
  Paginas       as Paginas,
  Precio        as Precio,
  Moneda        as Moneda, 
  Formato       as Formato,
  Url           as Url,
  case
    when _Ventas.Cuantos <= 0 then 0
    when _Ventas.Cuantos  = 1 then 1
    when _Ventas.Cuantos between 2 and 3 then 2
    when _Ventas.Cuantos > 3 then 3
  else 0
  end as NivelVentas,
  '' as EstadoVentas,
  _LClientes
}
