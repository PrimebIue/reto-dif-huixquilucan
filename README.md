# Reto DIF Huixquilucan

### Equipo de trabajo 

- Enrique Mondelli
- José Salgado
- Jorge Cabiedes
- Diego Mejía

Instituto Tecnológico y de Estudios Superiores de Monterrey

29/08/2021

## Tabla de Contenidos

1. [Problemática](#problemática)
2. [Requerimientos](#requerimientos)
4. [Casos de Uso / Historias de Usuario](#casos-de-uso--historias-de-usuario)
5. [Alcance de la Aplicación](#alcance-de-la-aplicación)
6. [Diseño de Pantallas](#diseño-de-pantallas)
7. [Wireframes & Mapa de Navegación](#wireframes--mapa-de-navegación)
8. [Matriz de Riesgos](#matriz-de-riesgos)
9. [Cronograma del Reto](#cronograma-del-reto)
10. [Aportaciones individuales y en equipo](#aportaciones-individuales-y-en-equipo)

## Problemática

El **DIF HUIXQUILUCAN** es una institución que se dedica al desarrollo integral familiar de varios grupos vulnerables. Esta institución realiza tanto publicaciones como anuncios a través de su página de *Facebook*, además de que despliega información de sus servicios a través de su sitio web para ser visualizados por su comunidad. La dificultad que se presenta es que navegar ambas de estas plataformas es complicado y no intutuivo para sus usuarios, por lo que no pueden encontrar la información que requieren. Lo que dicha institución necesita del equipo de trabajo es una aplicación que presenta la información que se publica en sus plataformas y sus diferentes localizaciones a manera que sea sencilla de acceder y navegar para sus usuarios.

## Requerimientos

### Funcionales

* [ ] Los servicios del **DIF HUIXQUILUCAN** se despliegan en vista de cuadrícula.
* [ ] Al hacer click en un elemento de la lista, se abre una pantalla de detalles en donde se ve la descripción del servicio y su número telefónico.
* [ ] El usuario puede buscar servicios utilizando un barra de búsqueda en la parte superior de la aplicación.
* [ ] Inicio de sesión de administrador que permite la modificación de la información presente en la aplicacion manipulando la base de datos.
* [ ] Usar *Google Maps SDK* para mostrar la localizacion de los servicios en la pantalla de detalles.
* [ ] Aplicación presenta una alerta al usuario en caso de que no se haya actualizado la información en más de una semana.
* [ ] Barra de navegación para multiples vistas.
* [ ] Vista que muestra los posts recientes del **DIF HUIXQUILUCAN** en Facebook.

### No Funcionales

* [ ] Interface desarrollada en *Flutter* utilizando *Android Studio*.
* [ ] La gestión del proyecto será con el modelo SCRUM.
* [ ] La aplicación solo estará disponible en dispositivos móviles inteligentes.
* [ ] La aplicacion solo puede ser ejecutada en *Android 16* en adelante, y *IOS 9.0* en adelante.
* [ ] El producto deberá ser publicado en el *App Store* y *Play Store*.
* [ ] La aplicación hace uso de la base de datos *Back4App* para mantener a los usuarios actualizados acerca de los servicios del **DIF HUIXQUILUCAN**.
* [ ] Se realizan 10 peticiones por segundo
* [ ] Se realizan 10,000 total de peticiones por mes
* [ ] Almacenamiento de archivos de 1GB
* [ ] Almacenamiento de base de datos de 0.25GB
* [ ] Se considera el plan gratis de *Back4App*
* [ ] Información descargada tiene permanencia en la memoria local de la aplicación y la mantiene hasta que se pueda actualizar.
* [ ] Cualquier información proporcionada por el cliente será confidencial.
* [ ] No será divulgada la naturaleza del sistema.
* [ ] Los derechos de autor pertenecerán a **DIF HUIXQUILUCAN**.

### Requerimientos de interface externos

- Usuario:
    * [ ] Tener una aplicación que sea sencilla de entender y navegar.
    * [ ] Poder visualizar información de las distintas localizaciones que corresponden a la institución.
    * [ ] Poder observar los anuncios y publicaciones más recientes, a más tardar de una semana.
- Hardware:
    * [ ] Dispositivo inteligente con *touchscreen* IOS o Android.
- Software:
    * [ ] *Android 16* en adelante o *IOS 9.0* en adelante.

### SDKs y APIs

- Back4App API
- Google Maps SDK
- Facebook API

## Casos de uso / Historias de usuario

- Como usuario externo de la aplicación, quisiera poder acceder a la informacion sobre servicios y eventos que proporciona el **DIF Huixquilucan** para poder analizar los servicios de los cuales puedo aprovechar, saber sus precios y sus ubicaciones.
- Como usuario administrador de la aplicación, quisiera poder iniciar sesión en la aplicación como administrador y usar mis privilegios para actualizar la información que se despliega para que los usuarios externos tengan acceso a la información más reciente.*
- Como miembro del **DIF Huixquilucan**, quisiera que todos los miembros de la comunidad que quieran saber información sobre nuestros servicios tengan acceso a esta informacion para poder aumentar el uso de nuestros servicios y contribuir al desarrollo integral de mas familias.

## Alcance de la aplicación

- Comunidad: Esta aplicacion esta destinada para personas que necesitan los servicios del **DIF Huixquilucan** en oferta sin importar el area, ademas de esto, aunque se aceptan personas de todo clase de estado economico, la audiencia ideal son personas con pocos recursos que no cuentan con otra opción.
- Beneficios: Facilidad en la búsqueda de información por parte del usuario en relación a la institución **DIF Huixquilucan**, junto con tener un área en la que se encuentra toda la información relevante para la comunidad. 
- Objetivos: Promover la participación activa de la comunidad con interés en los servicios que ofrece el **DIF Huixquilucan**, además de la presencia de una plataforma que sea más intuitiva de usar en comparación a la página de Facebook o el sitio web, y poder acceder a las localizaciones que corresponden a la institución.
- Entregables: Entrega de documento de especificación de requerimientos software, documento de diseño de software e infraestructura, prototipo con avance de la aplicación e implementación de la aplicación en su versión final con documentación sobre su uso a ser utilizado por los respectivos usuarios finales.

## Diseño de Pantallas

### Página Principal

La página principal de la aplicación tendra un menu de barras, el cual esta presente en todas las paginas, y el icono del DIF Huixquilucan en la parte superior.

Después de esto, se muestran los servicios del **DIF Huixquilucan** en cuadros, donde se encuentra una pequeña imagen y descripcion del lugar, el cual puede ser seleccionado para obtener mas informacion.

### Página de Oferta

En la parte superior de la página de servicios se encuentra el menu de barras y el icono del DIF Huixquilucan. Debajo de este esta una galeria de imagenes donde se puede observar mas información en relación al area y sus servicios.

Abajo esta una descripcion mas amplia de lo que se lleva a cabo en estos servicios. Despues de esto, se tienen formas de contacto correspondientes a los servicios y un mapa donde se puede encontrar la localización de estos.

### Menú de Barras

Se accede al menú de barras al seleccionar el icono superior izquierdo, en este menu aparecen hipervínculos que permiten el acceso a diferentes partes de la aplicacion, la cantidad de links puede ser ajustable dependiendo del desarrollo de los requerimientos.

Por el momento, es una link para regresar a la pagina principal , uno para ir a la pagina web, otro donde se puede contactar a la institución, y finalmente uno que redirige al los anuncios de Facebook.

### Publicaciones de Facebook

Se accede a esta sección mediante el menú de barras, en la cual se muestran las publicaciónes de Facebook del **DIF Huixquilucan** con la misma vista original de Facebook, aunque ligeramente simplificado para conveniencia y claridad en una lista de celdas vertical.

## Wireframes & Mapa de Navegación

![](https://i.imgur.com/1Rur1pz.png) 
![](https://i.imgur.com/VxGxlQT.png)
![](https://i.imgur.com/xP2orGo.png)

## Matriz de riesgos

Uno de los principales riesgos con los que esta aplicación cuenta es la dependencia que presenta a la plataforma de Facebook, ya que si esta se cae la sección de anuncios no se puede visualizar.

A pesar de que esta sección de anuncios depenga del internet, con tal de que el usuario pueda conectarse con una frecuencia de por lo menos una semana, la información se queda almacenada en la aplicación. 

Además de esto, la localización de Google Maps obtenida depende de una conexión al internet, a menos que esta se guarde a primera instancia de conexión de internet y no requiera de esta conexión después.

## Cronograma del reto

![](https://i.imgur.com/A5m0GK5.png)

## Aportaciones individuales y en equipo
<!-- Aportación individual y en equipo sobre el proceso que siguieron para intercambiar opiniones y posturas al analizar los datos y evidencias proporcionadas por el usuario en la elaboración de la etapa de requerimientos. ¿Hubo autonomía, apertura intelectual y carácter propositivo de manera individual durante la actividad? -->

### Aportaciones del equipo:

Lo primero que se realizó fue una lluvia de ideas sobre todo lo que puede ser implementado dentro de la aplicación que se alinee con los requerimientos definidos por el cliente socio-formador miembro del **DIF Huixquilucan**. 

Después de que cada miembro del equipo de trabajo argumentará sobre el propósito de cada requerimiento establecido, se realizó el filtro sobre los requerimientos que la mayoría decidió que no encajaban con las necesidades del cliente. Asimismo, se realizó la división de dichos requerimientos dependiendo si pertenecían al grupo de requerimientos tanto funcionales como no funcionales. 

A través de esta porción del proceso se pudo observar la presencia de apertura intelectual, ya que todo los miembros del equipo estaban dispuestos a escuchar cada postura, pero también a debatirla con su propio punto de vista de manera respetuosa.

Por otro lado, ya que cada integrante tenía una idea clara de la propuesta grupal, se realizó la división de las consiguientes secciones a cada miembro del equipo, en adición a realizar revisiones de lo que hacía cada quien y ofreciendo críticas constructivas.

### Aportaciones individuales:

- Enrique Mondelli
- José Salgado
    - El tabajo al realizar en este equipo fue de una forma altamente autonoma y positiva pero al mismo tiempo estabamos en comunicacion constante. Juntos ideamos e investigamos todo lo necesario para poder llenar el documento y nos divimos las secciones para realizar el trabajo de una forma mas eficiente.
    - Yo me encargue de el Mapa de Navegacion, el Diseño de Pantallas, ademas de ayudar en el Cronograma y una seccion de Requerimientos.
- Jorge Cabiedes:
    - En mi caso personal, aporté lo que a mi me pareció la mejor forma de organizarse en cuanto a las herramientas de colaboración. Propuse utilizar Markdown y Github para la elaboración de los documentos de requerimientos. También propuse el uso de una base de datos, específicamente Back4App y el uso de la API de Facebook para mostrar los posts recientes del DIF Huixquilucan en Facebook. También utilicé mi experience previa en desarrollo de aplicaciones y utilicé mi experiencia para definir objetivos realistas y útiles.
- Diego Mejía