CLASS zcl_virtelem DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_SADL_EXIT_CALC_ELEMENT_READ.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_virtelem IMPLEMENTATION.
  METHOD if_sadl_exit_calc_element_read~calculate.
   DATA lt_text type table of Zdevl_Cds_Velem WITH DEFAULT KEY.
   lt_text = CORRESPONDING #(  it_original_data ).
   LOOP AT lt_text ASSIGNING FIELD-SYMBOL(<fs_text>).
    <fs_text>-myText = 'Hello'.
   ENDLOOP.

   ct_calculated_data = CORRESPONDING #( lt_text ).
  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

  ENDMETHOD.

ENDCLASS.
