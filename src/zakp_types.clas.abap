CLASS zakp_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zakp_types IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    TYPES my_type TYPE i .
*    TYPES my_type TYPE string.
    TYPES my_type TYPE n length 10.
* Variable based on local type
    DATA my_variable TYPE my_type.
*
*    out->write(  `my_variable (TYPE MY_TYPE)` ).
*    out->write(   my_variable ).


    DATA airport TYPE /dmo/airport_id VALUE 'PAR'.

    out->write(  `airport (TYPE /DMO/AIRPORT_ID )` ).
    out->write(   airport ).
  ENDMETHOD.

ENDCLASS.
