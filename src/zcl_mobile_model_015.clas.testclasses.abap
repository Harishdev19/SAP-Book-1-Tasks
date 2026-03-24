*"* use this source file for your ABAP unit test classes
CLASS ltcl_mobile_test DEFINITION
FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.

PRIVATE SECTION.

DATA mo_mobile TYPE REF TO zcl_mobile_model_015.

METHODS:
  setup,
  test_iphone_price FOR TESTING.

ENDCLASS.



CLASS ltcl_mobile_test IMPLEMENTATION.

METHOD setup.
  CREATE OBJECT mo_mobile.
ENDMETHOD.

METHOD test_iphone_price.

  DATA(lv_price) = mo_mobile->get_mobile_price(
                     i_brand = 'APPLE'
                     i_model = 'IPHONE15' ).

  cl_abap_unit_assert=>assert_equals(
      act = lv_price
      exp = 80000 ).

ENDMETHOD.

ENDCLASS.
