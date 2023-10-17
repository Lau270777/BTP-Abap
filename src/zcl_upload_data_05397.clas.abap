CLASS zcl_upload_data_05397 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

      INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_upload_data_05397 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*Draft fields
*local_created_by      : abp_creation_user;
*local_created_at      : abp_creation_tstmpl;
*local_last_changed_by : abp_locinst_lastchange_user;
*local_last_changed_at : abp_locinst_lastchange_tstmpl;
*last_changed_at       : abp_lastchange_tstmpl;

DATA: lt_acc_categ TYPE TABLE OF ztb_ac_cat_05397,
      lt_catego    TYPE TABLE OF ztb_catego_05397,
      lt_client    TYPE TABLE OF ztb_client_05397,
      lt_cl_lib    TYPE TABLE OF ztb_cl_lib_05397,
      lt_libros    TYPE TABLE OF ztb_libros_05397.


**********************   TABLA ztb_ac_cat_05397 *****************

"fill internal table
   lt_acc_categ = VALUE #(
                         ( bi_categ = 'A' tipo_acceso = '1' )
                         ( bi_categ = 'B' tipo_acceso = '1' )
                         ( bi_categ = 'C' tipo_acceso = '2' )
                         ( bi_categ = 'D' tipo_acceso = '2' )
                         ( bi_categ = 'E' tipo_acceso = '2' )
                         ( bi_categ = 'F' tipo_acceso = '3' )
                         ( bi_categ = 'G' tipo_acceso = '3' )
                         ( bi_categ = 'H' tipo_acceso = '4' ) ).

" Delete possible entries; insert new entries
   delete FROM ztb_ac_cat_05397.
   INSERT ztb_ac_cat_05397 FROM TABLE @lt_acc_categ.

     IF sy-subrc = 0.
        out->write( |Acceso Categorías: { sy-dbcnt } registros insertados| ).
     ENDIF.

**********************   TABLA ztb_catego_05397 *****************

"fill internal table
   lt_catego = VALUE #(
                      ( bi_categ = 'A' descripcion = 'Filosofía, psicología' )
                      ( bi_categ = 'B' descripcion = 'Religión, mitología' )
                      ( bi_categ = 'C' descripcion = 'Ciencias Sociales (derecho, política, economía)' )
                      ( bi_categ = 'D' descripcion = 'Ciencias Naturales (matemáticas, astronomía, física)' )
                      ( bi_categ = 'E' descripcion = 'Ciencias Aplicadas (tecnología, informática)' )
                      ( bi_categ = 'F' descripcion = 'Arte, música, deporte' )
                      ( bi_categ = 'G' descripcion = 'Lengua, poesía, teatro' )
                      ( bi_categ = 'H' descripcion = 'Geografía, historia' ) ).

" Delete possible entries; insert new entries
   delete FROM ztb_catego_05397.
   INSERT ztb_catego_05397 FROM TABLE @lt_catego.

     IF sy-subrc = 0.
        out->write( |Categorías: { sy-dbcnt } registros insertados| ).
     ENDIF.

**********************   TABLA ztb_client_05397 *****************

"fill internal table
   lt_client = VALUE #(
                      ( id_cliente = '005638984K' tipo_acceso = '1' nombre = 'Andrew'     apellidos = 'Roberts'   email  = 'Roberts@correo.com'   url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )
                      ( id_cliente = '049320909Q' tipo_acceso = '2' nombre = 'Natalie'    apellidos = 'Clack'     email  = 'Clack@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '049573865T' tipo_acceso = '1' nombre = 'Faith'      apellidos = 'Black'     email  = 'Black@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '203947278B' tipo_acceso = '3' nombre = 'Carolyn'    apellidos = 'Wright'    email  = 'Wright@correo.com'    url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )
                      ( id_cliente = '234234231T' tipo_acceso = '5' nombre = 'Penelope'   apellidos = 'King'      email  = 'King@correo.com'      url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '239482309W' tipo_acceso = '5' nombre = 'Julian'     apellidos = 'Underwok'  email  = 'Underwok@correo.com'  url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '276594867J' tipo_acceso = '5' nombre = 'Olivia'     apellidos = 'Allan'     email  = 'Allan@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '283748858A' tipo_acceso = '5' nombre = 'Eric'       apellidos = 'Knoc'      email  = 'Knoc@correo.com'      url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '324726345S' tipo_acceso = '4' nombre = 'Vanessa'    apellidos = 'Baker'     email  = 'Baker@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '340958489D' tipo_acceso = '5' nombre = 'Michael'    apellidos = 'Short'     email  = 'Short@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '345093450E' tipo_acceso = '3' nombre = 'Sue'        apellidos = 'Sanderson' email  = 'Sanderson@correo.com' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )
                      ( id_cliente = '345838534R' tipo_acceso = '5' nombre = 'Lily'       apellidos = 'Langdon'   email  = 'Langdon@correo.com'   url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '348947597P' tipo_acceso = '5' nombre = 'Lillian'    apellidos = 'Davies'    email  = 'Davies@correo.com'    url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '378458844M' tipo_acceso = '5' nombre = 'Joseph'     apellidos = 'Smith'     email  = 'Smith@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '423586845G' tipo_acceso = '5' nombre = 'Stephanie'  apellidos = 'Quir'      email  = 'Quir@correo.com'      url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '430958433A' tipo_acceso = '2' nombre = 'Joan'       apellidos = 'Short'     email  = 'Short@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '439853453C' tipo_acceso = '5' nombre = 'Wendy'      apellidos = 'Newman'    email  = 'Newman@correo.com'    url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '4535325430' tipo_acceso = '1' nombre = 'Neil'       apellidos = 'Wilson'    email  = 'Wilson@correo.com'    url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '489632882D' tipo_acceso = '5' nombre = 'Sonia'      apellidos = 'Welch'     email  = 'Welch@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                      ( id_cliente = '540867547H' tipo_acceso = '5' nombre = 'Adrian'     apellidos = 'Young'     email  = 'Young@correo.com'     url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png')
                       ).

 " Delete possible entries; insert new entries
   delete FROM ztb_client_05397.
   INSERT ztb_client_05397 FROM TABLE @lt_client.

     IF sy-subrc = 0.
        out->write( |Clientes: { sy-dbcnt } registros insertados| ).
     ENDIF.


**********************   ztb_cl_lib_05397 *****************

"fill internal table

   lt_cl_lib = VALUE #(
                      ( id_cliente = '005638984K' id_libro  = '000001')
                      ( id_cliente = '005638984K' id_libro  = '000020')
                      ( id_cliente = '005638984K' id_libro  = '000021')
                      ( id_cliente = '049320909Q' id_libro  = '000002')
                      ( id_cliente = '049573865T' id_libro  = '000003')
                      ( id_cliente = '203947278B' id_libro  = '000004')
                      ( id_cliente = '234234231T' id_libro  = '000005')
                      ( id_cliente = '239482309W' id_libro  = '000006')
                      ( id_cliente = '239482309W' id_libro  = '000010')
                      ( id_cliente = '276594867J' id_libro  = '000007')
                      ( id_cliente = '276594867J' id_libro  = '000001')
                      ( id_cliente = '283748858A' id_libro  = '000008')
                      ( id_cliente = '283748858A' id_libro  = '000022')
                      ( id_cliente = '324726345S' id_libro  = '000009')
                      ( id_cliente = '340958489D' id_libro  = '000010')
                      ( id_cliente = '345093450E' id_libro  = '000011')
                      ( id_cliente = '345838534R' id_libro  = '000012')
                      ( id_cliente = '345838534R' id_libro  = '000003')
                      ( id_cliente = '348947597P' id_libro  = '000013')
                      ( id_cliente = '348947597P' id_libro  = '000022')
                      ( id_cliente = '378458844M' id_libro  = '000014')
                      ( id_cliente = '423586845G' id_libro  = '000015')
                      ( id_cliente = '430958433A' id_libro  = '000016')
                      ( id_cliente = '439853453C' id_libro  = '000017')
                      ( id_cliente = '439853453C' id_libro  = '000022')
                      ( id_cliente = '439853453C' id_libro  = '000001')
                      ( id_cliente = '4535325430' id_libro  = '000018')
                      ( id_cliente = '4535325430' id_libro  = '000022')
                      ( id_cliente = '489632882D' id_libro  = '000019')
                      ( id_cliente = '540867547H' id_libro  = '000020')
                       ).

  " Delete possible entries; insert new entries
   delete FROM ztb_cl_lib_05397.
   INSERT ztb_cl_lib_05397 FROM TABLE @lt_cl_lib.



********************** ztb_libros_05397 *****************

"fill internal table

 lt_libros  = VALUE #(
                      ( id_libro  = '000001' bi_categ = 'A' titulo = 'Diccionario de los sentimientos' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                      ( id_libro  = '000002' bi_categ = 'A' titulo = 'El camino' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0498' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                      ( id_libro  = '000027' bi_categ = 'C' titulo = 'La Historia' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0686' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                     ( id_libro  = '000028' bi_categ = 'E' titulo = 'La Selva' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0186' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                     ( id_libro  = '000029' bi_categ = 'G' titulo = 'Diccionario de los sentimientos' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                     ( id_libro  = '000003' bi_categ = 'A' titulo = 'Ética' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                     ( id_libro  = '000004' bi_categ = 'B' titulo = 'La Sociedad' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                     ( id_libro  = '000005' bi_categ = 'B' titulo = 'Evagelio' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                    ( id_libro  = '000006' bi_categ = 'B' titulo = 'El Profeta' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                    ( id_libro  = '000007' bi_categ = 'B' titulo = 'Your Growin' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                   ( id_libro  = '000008' bi_categ = 'B' titulo = 'Carta a la F sastre' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                   ( id_libro  = '000009' bi_categ = 'C' titulo = 'The langua MANIQUE' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                  ( id_libro  = '000010' bi_categ = 'C' titulo = 'Energy' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                  ( id_libro  = '000011' bi_categ = 'D' titulo = 'Análisis Nu' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                  ( id_libro  = '000012' bi_categ = 'D' titulo = 'Algebra' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                  ( id_libro  = '000013' bi_categ = 'D' titulo = 'Matemáticas' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000014' bi_categ = 'E' titulo = 'Un pequeño ' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000015' bi_categ = 'E' titulo = 'Mecánica' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000016' bi_categ = 'E' titulo = 'Fundametos' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000017' bi_categ = 'F' titulo = 'La populari' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000018' bi_categ = 'F' titulo = 'Ideal Demo' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                 ( id_libro  = '000019' bi_categ = 'F' titulo = '14 Canciones' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000020' bi_categ = 'F' titulo = '4 Notas' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000021' bi_categ = 'F' titulo = 'Mil besos' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000022' bi_categ = 'G' titulo = 'Nada' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000023' bi_categ = 'G' titulo = 'Poemas' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000024' bi_categ = 'H' titulo = 'Atlas' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000025' bi_categ = 'H' titulo = 'El dominio' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000026' bi_categ = 'H' titulo = 'Historia' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000071' bi_categ = 'G' titulo = 'Los Heraldos' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )

                ( id_libro  = '000072' bi_categ = 'G' titulo = 'Aves' autor = 'Hoagland' editorial = 'LATERZ A' Idioma = 'S'
                        paginas = '0486' precio = '146' moneda = 'USD' Formato = 'P' Url ='https://d4.logaligroup.com/wp-content/uploads/2019/11/41.png' )
                ).


  " Delete possible entries; insert new entries
   delete FROM ztb_libros_05397.
   INSERT ztb_libros_05397 FROM TABLE @lt_libros.







  ENDMETHOD.

ENDCLASS.
