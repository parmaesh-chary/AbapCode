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
  methods transactional_data.

ENDCLASS.



CLASS ZAKP_INSERT_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
me->flush(  ).
me->master_data( ).
me->transactional_data(  ).
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


  METHOD transactional_data.

 select * from zakp_bp INTO TABLE @data(lt_bp_temp).
 select * from zakp_prod into table @data(lt_prod_temp).

data : lt_so type table of ZAKP_SALE_ORDER,
       lt_sl type table of ZAKP_SALE_ITEM,
        lv_date type timestamp.
           get TIME STAMP FIELD lv_date.

      data :  cons1 type i value 2,
      cons2 type i value 2.

     data : lv_order_id type z_akp_de_id.


      read table lt_bp_temp into data(ls_bp) index 1.

       append value #(
            order_id = cons1
            order_no = 210123244
           buyer_id = ls_bp-bp_id
           gross_amount = 200
           currency = 'INR'
           created_by = sy-uname
           created_on = 20221022
           changed_by = sy-uname
           changed_on = 20221022
              ) to lt_so.
              cons1 = cons1 - 1.


      do cons2 times.

      read table lt_prod_temp into data(ls_prod) index cons2.


       append value #(
            order_id = lv_order_id
            item_id = cons2
            product = ls_prod-prod_id
           qty = cons2
           uom = 'PC'
           amount = cons2 * ls_prod-price
           currency = 'INR'
           created_by = sy-uname
           created_on = 20221022
           changed_by = sy-uname
           changed_on = 20221022
              ) to lt_sl.

       cons2 = cons2 - 1.
      ENDDO.

    INSERT zakp_sale_order from table @lt_so.
    INSERT zakp_sale_item from table @lt_sl.


  ENDMETHOD.
ENDCLASS.
