# Documento de Especificación de Requerimientos de Software del Reto DIF Huixquilucan

![](https://i.imgur.com/gzkJPmi.png)

### Equipo de trabajo 

- Enrique Mondelli - A01379363
- José Salgado - A01023661
- Jorge Cabiedes - A01024053
- Diego Mejía - A01024228

29/08/2021

## Tabla de Contenidos

1. [Glosario de Definiciones](#glosario-de-definiciones)
2. [Problemática](#problemática)
3. [Requerimientos](#requerimientos)
4. [Historias de Usuario](#historias-de-usuario)
5. [Diagramas de Casos de Uso y Actividades](#diagramas-de-casos-de-uso-y-actividades)
6. [Estándares de Administración de Proyectos](#estándares-de-administración-de-proyectos)
7. [Variables de Desempeño](#variables-de-desempeño)
8. [Alcance de la Aplicación](#alcance-de-la-aplicación)
9. [Diseño de Pantallas](#diseño-de-pantallas)
10. [Wireframes & Mapa de Navegación](#wireframes--mapa-de-navegación)
11. [Matriz de Riesgos](#matriz-de-riesgos)
12. [Cronograma del Reto](#cronograma-del-reto)
13. [Estimación del Esfuerzo del Proyecto](#estimación-del-esfuerzo-del-proyecto)
14. [Aportaciones Individuales y en Equipo](#aportaciones-individuales-y-en-equipo)

## Glosario de Definiciones

- **SDK:** Acrónimo de kit de desarrollo de software en inglés.
- **API:** Acrónimo de interfaz de programación de aplicaciones en inglés.
- **Back4App:** Plataforma de acceso gratis que permite el almacenamiento y consulta de datos en la nube.
- **App Store:** Servicio utilizado por dispositivos *IOS* para buscar y descargar aplicaciones.
- **Play Store:** Servicio utilizado por dispositivos *Android* para buscar y descargar aplicaciones.
- **Android y IOS:** Sistemas operativos móviles.
- **Petición:** Solicitud de información de un *API*.
- **Flutter:** *SDK* utilizado para desarrollar aplicaciones móviles creado por *Google*.
- **SCRUM:** Metodología de desarrollo ágil utilizada para la organización y desarrollo de software.
- **SCRUM Master**: Líder de un equipo de trabajo encargado de dirigirlos hacia los objetivos establecidos.
- **Wireframes:** Guías visuales que demuestran un diseño previo de la aplicación a desarrollar.
- **Trello:** Herramienta de administración de proyectos contenido en un sitio web.

## Problemática

El **DIF HUIXQUILUCAN** es una institución que se dedica al desarrollo integral familiar de varios grupos vulnerables. Esta institución realiza tanto publicaciones como anuncios a través de su página de *Facebook*, además de que despliega información de sus servicios a través de su sitio web para ser visualizados por su comunidad. La dificultad que se presenta es que navegar ambas de estas plataformas es complicado y no intuitivo para sus usuarios, por lo que no pueden encontrar la información que requieren. Lo que dicha institución necesita del equipo de trabajo es una aplicación que presenta la información que se publica en sus plataformas y sus diferentes localizaciones a manera que sea sencilla de acceder y navegar para sus usuarios.

## Requerimientos

### Funcionales

* [x] Los servicios del **DIF HUIXQUILUCAN** se despliegan en vista de cuadrícula.
* [x] Al hacer click en un elemento de la lista, se abre una pantalla de detalles en donde se ve la descripción del servicio y su número telefónico.
* [ ] El usuario puede buscar servicios utilizando un barra de búsqueda en la parte superior de la aplicación.
* [ ] Inicio de sesión de administrador que permite la modificación de la información presente en la aplicación manipulando la base de datos.
* [x] Usar *Google Maps SDK* para mostrar la localización de los servicios en la pantalla de detalles.
* [ ] Aplicación presenta una alerta al usuario en caso de que no se haya actualizado la información en más de una semana.
* [ ] Barra de navegación para múltiples vistas.
* [ ] Vista que muestra los publicaciones recientes del **DIF HUIXQUILUCAN** en Facebook.

### No Funcionales

* [ ] Interface desarrollada en *Flutter* utilizando *Android Studio*.
* [ ] La gestión del proyecto será con el modelo SCRUM.
* [ ] El equipo de trabajo consiste de 4 integrantes.
* [ ] La aplicación solo estará disponible en dispositivos móviles inteligentes.
* [ ] La aplicación solo puede ser ejecutada en *Android 16* en adelante, y *IOS 9.0* en adelante.
* [ ] El producto deberá ser publicado en el *App Store* y *Play Store*.
* [ ] La aplicación hace uso de la base de datos *Back4App* para mantener a los usuarios actualizados acerca de los servicios del **DIF HUIXQUILUCAN**.
* [ ] Se realizan 10 peticiones por segundo.
* [ ] Se realizan 10,000 total de peticiones por mes.
* [ ] Almacenamiento de archivos de 1GB.
* [ ] Almacenamiento de base de datos de 0.25GB.
* [ ] Se considera el plan gratis de *Back4App*.
* [ ] Información descargada tiene permanencia en la memoria local de la aplicación y la mantiene hasta que se pueda actualizar.
* [ ] Cualquier información proporcionada por el cliente será confidencial.
* [ ] No será divulgada la naturaleza del sistema.
* [ ] Los derechos de autor pertenecerán a **DIF HUIXQUILUCAN**.

### Interfaces Externas

- Usuario:
    * [ ] Tener una aplicación que sea sencilla de entender y navegar.
    * [ ] Poder visualizar información de las distintas localizaciones que corresponden a la institución.
    * [ ] Poder observar los anuncios y publicaciones más recientes, a más tardar de una semana.
- Hardware:
    * [ ] Dispositivo inteligente con pantalla táctil de IOS o Android.
- Software:
    * [ ] *Android 16* en adelante o *IOS 9.0* en adelante.

### SDKs y APIs

- Back4App *API*
- Google Maps *SDK*
- Facebook *API*

## Historias de Usuario

- Como usuario externo de la aplicación, quisiera poder acceder a la información sobre servicios y eventos que proporciona el **DIF Huixquilucan** para poder analizar los servicios de los cuales puedo aprovechar, saber sus precios y sus ubicaciones.
- Como usuario administrador de la aplicación, quisiera poder iniciar sesión en la aplicación como administrador y usar mis privilegios para actualizar la información que se despliega para que los usuarios externos tengan acceso a la información más reciente.
- Como miembro del **DIF Huixquilucan**, quisiera que todos los miembros de la comunidad que quieran saber información sobre nuestros servicios tengan acceso a esta información para poder aumentar el uso de nuestros servicios y contribuir al desarrollo integral de más familias.

## Diagramas de Casos de Uso y Actividades

### Casos de uso

![](https://i.imgur.com/d74piPj.png)
![](https://i.imgur.com/XbqqdSz.png)
![](https://i.imgur.com/MtdSYhd.png)
![](https://i.imgur.com/ANoJR7J.png)
![](https://i.imgur.com/KBsrs58.png)
![](https://i.imgur.com/6gAVtUf.png)
![](https://i.imgur.com/Au78VFU.png)

### Actividades

![](https://i.imgur.com/9qOSLhd.png)

## Estándares de Administración de Proyectos

- Para el desarrollo de las distintas etapas del software a lo largo del curso de *Integración de seguridad informática en redes y sistemas de software* se tiene establecido que se hará uso de la metodología ágil *SCRUM* para su estructura y organización.
- El *SCRUM Master* definido para este equipo de trabajo es el integrante Jorge Cabiedes, el cual está encargado de dar seguimiento al desarrollo del proyecto con los profesores del curso y guiar al equipo hacia los objetivos definidos.
- El desarrollo del software se realiza de manera cíclica de acuerdo a la metodología establecida previamente hasta que se hayan concluido con todos los requerimientos necesarios para su publicación y entrega.

## Variables de Desempeño

- El desempeño de los recursos humanos dependen de la calidad de las actividades que realice cada integrante del equipo en el transcurso de la evolución del proyecto.
- El desempeño de los recursos tecnológicos son el rendimiento del servidor donde se encuentra la aplicación, *Back4App* y celulares de los usuarios.
- Para ambos de estos, se estarán midiendo sus respectivos desempeños haciendo conferencias con el socio-formador para que presente retroalimentación, lo cual se usará para ajustar el desempeño del equipo de desarrollo de la aplicación y de los recursos tecnológicos de acuerdo a lo necesario por el socio-formador.

## Alcance de la Aplicación

- Comunidad: Esta aplicación está destinada para personas que necesitan los servicios del **DIF Huixquilucan** en oferta sin importar el área, además de esto, aunque se aceptan personas de toda clase de estado económico, la audiencia ideal son personas con pocos recursos que no cuentan con otra opción.
- Beneficios: Facilidad en la búsqueda de información por parte del usuario en relación a la institución **DIF Huixquilucan**, junto con tener un área en la que se encuentra toda la información relevante para la comunidad. 
- Objetivos: Promover la participación activa de la comunidad con interés en los servicios que ofrece el **DIF Huixquilucan**, además de la presencia de una plataforma que sea más intuitiva de usar en comparación a la página de Facebook o el sitio web, y poder acceder a las localizaciones que corresponden a la institución.
- Entregables: Entrega de documento de especificación de requerimientos software, documento de diseño de software e infraestructura, prototipo con avance de la aplicación e implementación de la aplicación en su versión final con documentación sobre su uso a ser utilizado por los respectivos usuarios finales.

## Diseño de Pantallas

### Página Principal

La página principal de la aplicación tendrá un menú de barras, el cual está presente en todas las paginas, y el icono del DIF Huixquilucan en la parte superior.

Después de esto, se muestran los servicios del **DIF Huixquilucan** en cuadros, donde se encuentra una pequeña imagen y descripción del lugar, el cual puede ser seleccionado para obtener más información.

### Página de Oferta

En la parte superior de la página de servicios se encuentra el menú de barras y el icono del DIF Huixquilucan. Debajo de este esta una galería de imágenes donde se puede observar más información en relación al área y sus servicios.

Abajo esta una descripción más amplia de lo que se lleva a cabo en estos servicios. Después de esto, se tienen formas de contacto correspondientes a los servicios y un mapa donde se puede encontrar la localización de estos.

### Menú de Barras

Se accede al menú de barras al seleccionar el icono superior izquierdo, en este menú aparecen hipervínculos que permiten el acceso a diferentes partes de la aplicación, la cantidad de links puede ser ajustable dependiendo del desarrollo de los requerimientos.

Por el momento, es un link para regresar a la página principal , uno para ir a la página web, otro donde se puede contactar a la institución, y finalmente uno que redirige a los anuncios de Facebook.

### Publicaciones de Facebook

Se accede a esta sección mediante el menú de barras, en la cual se muestran las publicaciones de Facebook del **DIF Huixquilucan** con la misma vista original de Facebook, aunque ligeramente simplificado para conveniencia y claridad en una lista de celdas vertical.

## Wireframes & Mapa de Navegación

![](https://i.imgur.com/1Rur1pz.png) 
![](https://i.imgur.com/VxGxlQT.png)
![](https://i.imgur.com/xP2orGo.png)

## Matriz de riesgos

1. Uno de los principales riesgos con los que esta aplicación cuenta es la dependencia que presenta a la plataforma de Facebook, ya que si esta se cae la sección de anuncios no se puede visualizar si no se han actualizado de manera previa. Es por eso que para prevenir esto se actualiza la información guardada dentro de la misma aplicación. 
2. La localización de *Google Maps* obtenida depende de una conexión a internet, a menos que esta se guarde a primera instancia de conexión de internet y no requiera de esta conexión después, lo cual es la prevención hacía esta situación de riesgo.
3. Al añadir la funcionalidad de manejo de información por parte de los administradores, se tiene que realizar un sistema de inicio de sesión. Este sistema trae el riesgo de que alguien que no es administrador entre como administrador y cause una pérdida de datos necesario para el buen desempeño de la aplicación. Por lo cual es de suma importancia integrar un alto nivel de seguridad para prevenir este tipo de ataque y contar con un respaldo de la información.
4. Al utilizar *Back4App* para el almacenamiento de la información de los servicios y datos de sesión de administradores, se crea una dependencia a este servicio, por lo cual el riesgo de que exista algún defecto se trasladaría de manera paralela a nuestra aplicación. La manera de prevenir esto es extraer toda la información de la base de datos y solo realizar cambios si existe una posible actualización, ya que la información estaría almacenada de manera local.

![](https://i.imgur.com/5M0hR8j.png)

## Cronograma del Reto

![](https://i.imgur.com/dxW73Uc.png)

## Estimación del Esfuerzo del Proyecto

- El equipo de trabajo dedicará cuatro horas al día de lunes a jueves que corresponden a los horarios de clase, en adición a un estimado de cuatro horas adicionales por semana fuera de clase para el cumplimiento de actividades asignadas por profesores hasta la fecha del 22 de Octubre.
- La principal herramienta para la organización de tareas y actividades utilizada es *Trello*.

## Aportaciones Individuales y en Equipo

### Aportaciones del Equipo:

Lo primero que se realizó fue una lluvia de ideas sobre todo lo que puede ser implementado dentro de la aplicación que se alinee con los requerimientos definidos por el cliente socio-formador miembro del **DIF Huixquilucan**. 

Después de que cada miembro del equipo de trabajo argumentará sobre el propósito de cada requerimiento establecido, se realizó el filtro sobre los requerimientos que la mayoría decidió que no encajaban con las necesidades del cliente. Asimismo, se realizó la división de dichos requerimientos dependiendo si pertenecían al grupo de requerimientos tanto funcionales como no funcionales. 

A través de esta porción del proceso se pudo observar la presencia de apertura intelectual, ya que todos los miembros del equipo estaban dispuestos a escuchar cada postura, pero también a debatirla con su propio punto de vista de manera respetuosa.

Por otro lado, ya que cada integrante tenía una idea clara de la propuesta grupal, se realizó la división de las consiguientes secciones a cada miembro del equipo, en adición a realizar revisiones de lo que hacía cada quien y ofreciendo críticas constructivas.

### Aportaciones Individuales:

- Enrique Mondelli:
    - Yo diría que hubo apertura intelectual en la sesión de lluvia de ideas que tuvimos como equipo, donde todos compartimos la visión que tenemos para la aplicación y las combinamos para formar esta documentación de lo que se necesita hacer para cumplir con lo que solicita el cliente. Después de tener una clara visión, pudimos dividirnos el trabajo para poder realizar la creación de este documento de manera eficiente y autónoma.
    - Mi aportación empezó por lo mencionado previamente, en el establecimiento de requerimientos junto con mi equipo. De manera individual me encargue de los casos de uso, historias de usuario, diagramas de actividades y aportaciones a la matriz de riesgos.
- José Salgado:
    - El trabajo al realizar en este equipo fue de una forma altamente autónoma y positiva, pero al mismo tiempo estábamos en comunicación constante. Juntos ideamos e investigamos todo lo necesario para poder llenar el documento y nos dividimos las secciones para realizar el trabajo de una forma más eficiente.
    - Yo me encargué del Mapa de Navegación, el Diseño de Pantallas, además del Cronograma y una sección de Requerimientos.
- Jorge Cabiedes:
    - En mi caso personal, aporté lo que a mí me pareció la mejor forma de organizarse en cuanto a las herramientas de colaboración. Propuse utilizar *Markdown* y *Github* para la elaboración de los documentos de requerimientos. También propuse el uso de una base de datos, específicamente Back4App y el uso de la API de Facebook para mostrar las publicaciones recientes del DIF Huixquilucan en Facebook. También utilicé mi experiencia previa en desarrollo de aplicaciones y utilicé mi experiencia para definir objetivos realistas y útiles.
- Diego Mejía:
    - Después de haber concluido este documento de especificación de requerimientos de software, considero que existió una apertura intelectual en la que todos escuchaban los diferentes puntos de vista, en adición a la autonomía que cada integrante tenía debido a que confiamos entre nosotros a tener un similar nivel de conocimiento sobre los distintos temas. 
    - Con esto dicho, yo establecí la estructura del documento, y realicé el glosario de definiciones, la definición de la problemática, algunas contribuciones del área de requerimientos funcionales y no funcionales, el alcance de la aplicación y un resumen de lo que todos como equipo aportamos al desarrollo de este documento.
