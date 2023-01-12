CLASS zbp_fill DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  methods fill_data.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZBP_FILL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    me->fill_data( ).
    out->write('data inserted').
  ENDMETHOD.


  method fill_data.
       data : lt_bp type TABLE OF zakp_bp.

          append value #(
          bp_id = 12322121
          bp_role = '01'
          company_name = 'XYZ'
          street = 'adhibat'
          city = 'hyd'
          country = 'IN'
          region = 'APJ'
            ) to lt_bp.
           append value #(
          bp_id = 12322120
          bp_role = '01'
          company_name = 'ABC'
          street = 'GNG'
          city = 'hyd'
          country = 'IN'
          region = 'APJ'
            ) to lt_bp.

            insert zakp_bp from table @lt_bp.
  ENDMETHOD.
ENDCLASS.
