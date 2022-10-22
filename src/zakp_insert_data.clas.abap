CLASS zakp_insert_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.

  PRIVATE SECTION.
  methods flush.
  methods master_data.

ENDCLASS.



CLASS zakp_insert_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
me->flush(  ).
me->master_data( ).
out->write( 'data inserted' ).

  ENDMETHOD.
  method flush.
  DELETE from: zakp_bp ,zakp_prod,zakp_sale_item,zakp_sale_order.
  endmethod.
  method master_data.
   data : lt_bp type TABLE OF zakp_bp,
          lt_prod type TABLE OF zakp_prod.

          append value #(
          bp_id = 12322123
          bp_role = '01'
          company_name = 'tcs'
          street = 'adhibatla'
          city = 'hyd'
          country = 'IN'
          region = 'APJ'
            ) to lt_bp.

             append value #(
          bp_id = 23617263
          bp_role = '02'
          company_name = 'INF'
          street = 'pocharam'
          city = 'city'
          country = 'IN'
          region = 'GHA'
            ) to lt_bp.

            insert zakp_bp from table @lt_bp.

            append value #(
            prod_id = 23943
            name = '01'
            category ='LAPTOP'
            price = 12
            currency ='INR'
            disocunt = 2
              ) to lt_prod.

               append value #(
            prod_id = 23823
            name = '02'
            category ='watches'
            price = 20
            currency ='INR'
            disocunt = 5
              ) to lt_prod.
        insert zakp_prod from table @lt_prod.


  endmethod.



ENDCLASS.
