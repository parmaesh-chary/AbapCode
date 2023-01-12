CLASS ztest_akp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_akp IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*data(var) = out->get('paramesh').
*out->write( var ).

*    DATA variable TYPE string.
**    DATA variable TYPE i.
*    DATA variable TYPE d.
*    DATA variable TYPE c LENGTH 10.
*    DATA variable TYPE n LENGTH 10.
    DATA variable TYPE p LENGTH 8 DECIMALS 2.
* Output
**********************************************************************
    out->write( 'Result with Initial Value' ).
    out->write( variable ).
    out->write( '---------' ).

    variable = '19891109'.

    out->write(  'Result with Value 19891109' ).
    out->write(   variable ).
    out->write(  '---------' ).


  ENDMETHOD.

ENDCLASS.
