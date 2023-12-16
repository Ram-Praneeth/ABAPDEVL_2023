@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Virtual Element'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zdevl_Cds_Velem as select from /dmo/airport
{
     @UI.lineItem: [{ position: 10 }]
   key airport_id,
   @UI.lineItem: [{ position: 20 }]
   name,
   
   @EndUserText.label: 'MYTEXT'
   @ObjectModel.virtualElementCalculatedBy: 'ZCL_VIRTELEM' 
   @UI.lineItem: [{ position: 30 }]
   cast('' as abap.char( 10 )) as myText
}
