CLASS zcl_delete_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DELETE_TABLE IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

   DELETE FROM ZTB_LIBROS_DD.

   IF SY-SUBRC EQ 0.
      OUT->WRITE( ' Toda la data fue borrada' ) .
   ENDIF.

ENDMETHOD.
ENDCLASS.