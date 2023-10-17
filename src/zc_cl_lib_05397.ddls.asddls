@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZC_CL_LIB_05397
       as select from ztb_cl_lib_05397
{

    key id_libro  as IdLibro,
        count( distinct id_cliente) as Ventas
}
group by 
         id_libro;
