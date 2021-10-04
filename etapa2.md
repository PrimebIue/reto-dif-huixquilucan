# Documento de diseño e infraestructura de la aplicación

![](https://i.imgur.com/gzkJPmi.png)

### Equipo de trabajo 

- Enrique Mondelli - A01379363
- José Salgado - A01023661
- Jorge Cabiedes - A01024053
- Diego Mejía - A01024228

04/10/2021

## Tabla de Contenidos

1. [Diagrama del Diseño de la Base de Datos](#diagrama-del-diseño-de-la-base-de-datos)
2. [Diagrama de la Arquitectura de la App](#diagrama-de-la-arquitectura-de-la-app)
3. [Diagrama de Clases de la App](#diagrama-de-clases-de-la-app)
4. [Diseño de las Interfaces de Usuario](#diseño-de-las-interfaces-de-usuario)
5. [Diagramas de Secuencia](#diagramas-de-secuencia)
6. [Integración de Seguridad en Sistemas Computacionales](#integración-de-seguridad-en-sistemas-computacionales)

## Diagrama del Diseño de la Base de Datos
![](https://i.imgur.com/x6Vxuhc.png)

## Diagrama de la Arquitectura de la App
![](https://i.imgur.com/qCRsr4e.png)

## Diagrama de Clases de la App
![](https://i.imgur.com/Iz31MV3.png)

## Diseño de las Interfaces de Usuario
![](https://i.imgur.com/ayM54UJ.png)
![](https://i.imgur.com/E7v8vm8.png)

## Diagramas de Secuencia
![](https://i.imgur.com/DtmmXl5.png)

## Integración de Seguridad en Sistemas Computacionales
Las medidas preventivas necesarias para el desarrollo e implementación de la aplicación son esconder las llaves de los *API* de *Google Maps* y *Back4App*. 

Para llevar a cabo esto, se hará uso de una librería en *Flutter* llamada *flutter_dotenv* la cual es capaz de guardar las variables de las llaves a través de un archivo secreto *.env* para que no se modifquen los datos dentro de las respectivas plataformas, y así simplemente se cargue el archivo completo en los programas.

Junto con esto, la llave *API* de *Google* será restringida a que las llamadas sean solo posibles hacia *Google Maps* para la plataforma de desarrollo seleccionada por el equipo de trabajo.