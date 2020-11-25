@AbapCatalog.sqlViewName: 'ZCDS_V_LIBROS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Libros'

define view zcds_libros_dd as select from ztb_libros_dd  as Libros 
  
  {    
  key id_libro  as Id_libro,
  key bi_categ  as Bi_categ,
  titulo        as Titulo,
  autor         as Autor,
  editorial     as Editorial,
  idioma        as Idioma,
  paginas       as Paginas,
  precio        as Precio,
  moneda        as Moneda, 
  formato       as Formato,
  url           as Url
}
