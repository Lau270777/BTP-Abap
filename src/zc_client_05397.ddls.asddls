@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity zc_client_05397 
       as select from ztb_client_05397 as Clientes
       inner join ztb_cl_lib_05397     as ClientesLib 
       on Clientes.id_cliente = ClientesLib.id_cliente
{
    key ClientesLib.id_libro   as IdLibro,
    key Clientes.id_cliente    as idcliente,
    key Clientes.tipo_acceso   as Acceso,
        Clientes.nombre        as Nombre,
        Clientes.apellidos     as Apellidos,
        Clientes.email         as Email,
        Clientes.url           as Imagen,
        concat_with_space(Clientes.nombre, Clientes.apellidos, 1) as NombreCompleto
}
