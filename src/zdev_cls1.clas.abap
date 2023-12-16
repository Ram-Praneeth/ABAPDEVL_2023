CLASS zdev_cls1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS constructor.
      DATA lv_cnt type c LENGTH 4.
      DATA gt_travel TYPE STANDARD TABLE OF /DMO/C_Travel_U.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS zdev_cls1 IMPLEMENTATION.
  METHOD constructor.
   SELECT  *  from /DMO/C_Travel_U into TABLE @DATA(gt_travel) UP TO 10 ROWS.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    out->write( gt_travel ).
  ENDMETHOD.

ENDCLASS.
