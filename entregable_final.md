# Entregable Final

![](https://i.imgur.com/gzkJPmi.png)

### Equipo de trabajo 

- Enrique Mondelli - A01379363
- José Salgado - A01023661
- Jorge Cabiedes - A01024053
- Diego Mejía - A01024228

### Profesores
- Jorge Rofríguez
- Luis Mucino
- José Eslava
- Edgar Manoatl
- Federico Navarro

### Bloque 
Integración de seguridad informática en redes y sistemas de software

18/10/2021

## Manual técnico

### Ejecución de aplicación

Para llevar a cabo la ejecución correcta de la aplicación móvil desarrollada por el equipo de trabajo, es necesario seguir los siguientes pasos: 

1. Descargar un *.zip* de todo el proyecto o realizar `git clone` del repositorio en la carpeta deseada.
2. Ejecutar `flutter doctor` para verificar que todos los componentes necesarios estén correctamente configurados. 
3. Abrir la carpeta *reto_dif* a través de *Android Studio*.
4. Ejecutar `flutter pub get` para que todas las dependencias y *assets* sean configuradas correctamente. 
5. Seleccionar un dispositivo virtual o físico en el cuál visualizar la aplicación, ya sea de la plataforma *IOs* o *Android*.
6. Verificar que el dispositivo esté conectado a internet para poder hacer la descarga de información por primera vez de manera correcta (este paso es crucial para que la aplicación funcione adecuadamente en el futuro).
7. Seleccionar el botón de *run* del programa `main.dart` que se encuentra en la carpeta `lib` para cargar la aplicación en el dispositivo o seleccionar el botón de *run* al lado del `main` del mismo.

Después de haber seguido todos estos pasos, es posible visualizar la información de todos los servicios ya sea con o sin conexión, solo que sin conexión no se pueden visualizar las imagenes (para no utilizar tanta memoria en el celular) o el mapa de *Google Maps*.

### Ejecución de pruebas

La pruebas realizadas son pruebas de integración, lo que significa que son hechas en el dispositivo virtual haciendo uso de las herramientas contenidas de *Flutter* a través de *.dart*, en específico utilizando la dependencia `integration_test` para no tener que generar una aplicación aparte.

Para ejecutar las pruebas, se tienen que seguir los siguientes pasos:

1. Verificar que el dispositivo virtual a utlizar tenga una conexión a internet.
2. Dentro de la carpeta del proyecto y de *Android Studio*, seleccionar el programa `unit_tests.dart`.
3. Presionar el botón *run* o el botón del lado izquierdo del `main` para ejecutar las pruebas.

Después de haber realizado esto, dentro de la terminal, si todas las pruebas fueron exisosas, no se arroja ningún error. En caso de que alguno sea identificado, se especifíca que prueba falló y el error que sucedió para que esto sucediera.

## Elementos de Infraestructura

Debido a que la base de datos fue establecida en una plataforma en línea a través de *Back4App*, no se necesita realizar ninguna configuración del backend. Y para poder visualizar la aplicación se necesita descargar y abrir el proyecto completo a través de *Android Studio*, y ejecutar el programa principal mediante un dispositivo virtual o físico.

Para que la aplicación funcione correctamente se necesita abrir por lo menos una vez con conexión a internet para que la información de la base de datos se quede guardada.

Además de esto, para revisar la cantidad de recursos, se necesita abrir la sección de aplicaciones de *Back4App* del usuario, y en la base de datos del *DIF*, seleccionar el elemento de *plan de uso*. 

Por el momento, se están utilizando los siguientes recursos en línea: 10 peticiones por segundo, 2.87 mil peticiones totales, almacenamiento de archivos de 4.19 MB y almacenamiento de base de datos de 187.50 KB.

Con esto dicho, el plan de uso gratis tiene los siguientes límites: 10 peticiones por segundo, 10,000 peticiones totales por mes, almacenamiento de archivos de 1 GB y almacenamiento de base de datos de 0.25 GB.

Así pues, para validar que la infraestructura este funcionando correctamente se revisa que la plataforma de *Back4App* este en línea, se observa que todos los servicios se estén desplegando con una conexión al internet, y se revisa de nuevo con la aplicación sin conexión para verificar que la información guardada en memoria local se esté guardando.

Para verificar que no se interrumpan o alteren las distintas operaciones de la aplicación, se tienen que monitorear varias cosas para asegurar el funcionamiento de la aplicacion. 

Primero que todo, se tiene que checar la base de datos de *Back4App* frecuentemente para asegurar que la información esté correcta y actualizada.

Después de esto, se tiene que asegurar que en la aplicación esta guardando la información más reciente obtenida de la base de datos en el celular del usuario para que se tenga acceso aunque no exista una conexión a internet.

En adición, se tiene que tener en cuenta que las localizaciones de *Google Maps* en la app sean las correctas y más recientes por cada servicio correspondiente.

Por último, se tienen que monitorear varias cosas para asegurar el funcionamiento de la aplicacion. Antes que nada, se tiene que checar la base de datos de *Back4App* frecuentemente para asegurar que la información esté correcta y actualizada.

Después de esto, se tiene que asegurar que en la aplicación esta guardando la información más reciente obtenida de la base de dats en el celular del usuario para que se tenga acceso aunque no exista una conexión a internet.

Además, se tiene que tener en cuenta que las localizaciones de *Google Maps* en la app sean las correctas y más recientes por cada servicio correspondiente.

## Elementos de Seguridad

Las principales amenazas a las que el equipo de trabajo se enfrenta es la exposición de las conexiones a los diferentes *APIs* que se utilizan, debido a que la información puede ser modificada o eliminada.

También, si cualquier persona encuentra la manera de acceder a la base de datos, podría modificar o eliminar la información, haciendo que la aplicación no funcione correctamente.

Para poder mitigar estas amenazas, se utilizan distintas acciones para combatirlos. En el caso de las llaves, se utiliza una dependencia de *.dart* llamada *dotenv* que es utilizada para encriptar las variables que están definidas para estas conexiones. Y para la base de datos, se tiene que asegurar que no pueda ser modificada por cualquier persona, dando restricciones de acceso a la información en la plataforma en línea.

Es así que todos los aspectos de seguridad han sido considerados. La información que se está desplegando es obtenida de la página web del *DIF Huixquilucan*, la cual es pública. Y la única vulnerabilidad existente es la exposición de las llaves previamente mencionadas y que no se de acceso publico al database.

Por último, con respecto a los riesgos identificados en el desarrollo de aplicaciones móviles de acuerdo a la metodología DEVSECOPS, Se tiene que asegurar que todo el proceso de creación este apoyado fuertemente por una parte de seguridad y operaciones. 

No se puede hacer una parte y después la otra debido a que es mucho más probable que se descubran graves errores en los momentos menos oportunos. Al desarollar se tiene que tomar en cuenta la seguridad, las pruebas y los diferentes componentes.

Solo cuando las tres partes estén planeadas y trabajen simultáneamente se puede crear una aplicación que opere efectiva y correctamente.
