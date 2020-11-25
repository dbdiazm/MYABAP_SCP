CLASS zcl_insert_data_table_dd DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INSERT_DATA_TABLE_DD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data : lt_acc_categ type TABLE of ztb_acc_categ_dd,
         lt_catego type TABLE of ztb_catego_dd,
         lt_clientes type table of ztb_clientes_dd,
         lt_clnts_lib type table of ztb_clnts_lib_dd,
         lt_libros type table of ztb_libros_dd.


  lt_acc_categ = VALUE #(
     ( bi_categ = '1' tipo_acceso = '1' )
     ( bi_categ = '2' tipo_acceso = '2' ) ).

  DELETE FROM ztb_acc_categ_dd.
  insert ztb_acc_categ_dd from table @lt_acc_categ.

  out->write( 'tabla ztb_acc_categ_dd' ).
  out->write(  sy-dbcnt ).



  lt_catego = VALUE #(
     (  bi_categ = '1' descripcion = 'Categoria 1' )
     (  bi_categ = '2' descripcion = 'Categoria 2' ) ).

  DELETE FROM ztb_catego_dd.
  insert ztb_catego_dd from table @lt_catego.

  out->write( 'tabla ztb_catego_dd' ).
  out->write(  sy-dbcnt ).



  lt_clientes = VALUE #(
     ( id_cliente = '001' tipo_acceso = '1' nombre = 'Jose' apellidos = 'Perez' email = 'email@gmail.com' url = 'http://www.url.com' )
     ( id_cliente = '002' tipo_acceso = '2' nombre = 'Luis' apellidos = 'Gonzalez' email = 'email2@gmail.com' url = 'http://www.url2.com' )
     ( id_cliente = '003' tipo_acceso = '2' nombre = 'Carlos' apellidos = 'Martinez' email = 'email3@gmail.com' url = 'http://www.url3.com' )
    ).

   DELETE FROM ztb_clientes_dd.
   insert ztb_clientes_dd from table @lt_clientes.

   out->write( 'tabla ztb_clientes_dd' ).
   out->write(  sy-dbcnt ).

  lt_clnts_lib = VALUE #(
    ( id_cliente = '001' id_libro = '001' )
    ( id_cliente = '002' id_libro = '003' )
    ( id_cliente = '003' id_libro = '002' )
    ( id_cliente = '001' id_libro = '002' )
    ( id_cliente = '003' id_libro = '001' ) ).

   DELETE FROM ztb_clnts_lib_dd.
   insert ztb_clnts_lib_dd from table @lt_clnts_lib.

   out->write( 'tabla ztb_clnts_lib_dd' ).
   out->write(  sy-dbcnt ).


   lt_libros = VALUE #(
      (  id_libro = '001' bi_categ = '1' titulo = 'Libro 1' autor = 'Perez' editorial = 'Romor' Idioma = 'ES' paginas = '100'
         precio = '50.2' moneda = 'EUR' FORMATO = '1' url = 'http://www.libro1.com')
      (  id_libro = '002' bi_categ = '2' titulo = 'Libro 2' autor = 'Perez' editorial = 'Lara' Idioma = 'ES' paginas = '60'
         precio = '30.2' moneda = 'EUR' FORMATO = '2' url = 'http://www.libro2.com')
      (  id_libro = '003' bi_categ = '2' titulo = 'Libro 3' autor = 'Gomez' editorial = 'Salvat' Idioma = 'ES' paginas = '33'
         precio = '22.2' moneda = 'EUR' FORMATO = '2' url = 'http://www.libro3.com')
      (  id_libro = '004' bi_categ = '1' titulo = 'Libro 4' autor = 'Gomez' editorial = 'Salvat' Idioma = 'ES' paginas = '44'
         precio = '800.2' moneda = 'EUR' FORMATO = '2' url = 'http://www.libro4.com')
          ).

   DELETE FROM ztb_libros_dd.
   insert ztb_libros_dd from table @lt_libros.

   out->write( 'tabla ztb_libros_dd' ).
   out->write(  sy-dbcnt ).


  ENDMETHOD.
ENDCLASS.
