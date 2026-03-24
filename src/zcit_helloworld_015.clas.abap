CLASS zcit_helloworld_015 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcit_helloworld_015 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'Hello World' ).
  ENDMETHOD.
ENDCLASS.
