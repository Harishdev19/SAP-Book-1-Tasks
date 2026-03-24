CLASS zcl_mobile_model_015 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS get_mobile_price
      IMPORTING
        i_brand TYPE string
        i_model TYPE string
      RETURNING
        VALUE(r_price) TYPE i.

ENDCLASS.



CLASS zcl_mobile_model_015 IMPLEMENTATION.

  METHOD get_mobile_price.

    IF i_brand = 'APPLE' AND i_model = 'IPHONE15'.
      r_price = 80000.

    ELSEIF i_brand = 'SAMSUNG' AND i_model = 'S23'.
      r_price = 70000.

    ELSE.
      r_price = 0.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
