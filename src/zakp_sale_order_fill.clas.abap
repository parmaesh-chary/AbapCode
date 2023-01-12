CLASS zakp_sale_order_fill DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  METHODS FILL_DATA.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAKP_SALE_ORDER_FILL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  me->fill_data(  ).
  out->write( 'data inserted' ).

  ENDMETHOD.


  METHOD fill_data.

  DATA lt_so type table of ZAKP_SALE_ORDER.

     append value #(
            order_id = 12
            order_no = 210123244
           buyer_id = 12322122
           gross_amount = 200
           currency = 'INR'
           created_by = sy-uname
           created_on = 20221022
           changed_by = sy-uname
           changed_on = 20221022
              ) to lt_so.

             append value #(
            order_id = 123
            order_no = 210123244
           buyer_id = 12322120
           gross_amount = 200
           currency = 'INR'
           created_by = sy-uname
           created_on = 20221022
           changed_by = sy-uname
           changed_on = 20221022
              ) to lt_so.

              Insert zakp_sale_order from table @lt_so.
  ENDMETHOD.
ENDCLASS.
