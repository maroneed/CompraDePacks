|ingresoCliente ingresoServicio ingresoSuscripcion nombreClientes z comercio a resultado  cliente3 cliente2 suscripcion1 servicio1 servicio2 b c d e resultadoPrecio nombre1 nombre2 apellido1 apellido2 email1 email2 contrasena1 contrasena2 numero1 numero2 fecha1 fecha2 estado1 estado2 pago1 pago2 |
Transcript clear; print: 'Aplicacion de series y films' ; cr; show.

"-------Creamos el comercio---------"
a:='Packs de entretenimiento'.
comercio:= Comercio crearComercioNombre: a.

"------------clientes------------"

ingresoCliente:=true.
[ingresoCliente] whileTrue: [
    
     nom:=Prompter prompt: 'Ingrese nombre del cliente'.
     ape:=Prompter prompt: 'Ingrese apellido del cliente'.
     m:=Prompter prompt: 'Ingrese mail del cliente'.
     pass:=Prompter prompt: 'Ingrese contraseña del cliente'.
     cliente:=Cliente crearCliente: nom apellido: ape email: m contrasena: pass.
     comercio altaCliente: cliente.
     ingresoCliente:=Prompter prompt: 'Desea continuar con la carga de clientes? (s / n)'.
     (ingresoCliente = 's')ifTrue: [ingresoCliente:= true]
                                   ifFalse: [ingresoCliente:= false ].

].

nombre1:= 'pedro'.
nombre2:='susana'.
apellido1:='ramirez'.
apellido2:='hernandez'.
email1:= 'pedro@gmail.com'.
email2:= 'susana@gmail.com'.
contrasena1:='1234'.
contrasena2:='4321'.



cliente3:= Cliente crearCliente: nombre1 apellido: apellido1 email: email1 contrasena: contrasena1. 
cliente2:= Cliente crearCliente: nombre2 apellido: apellido2 email: email2 contrasena: contrasena2. 
cliente4:= Cliente crearCliente: 'luis alberto' apellido: 'Spinetta' email: 'luis@gmail.com' contrasena: '12357'.
cliente5:= Cliente crearCliente: 'jonh' apellido: 'Frusciante' email: 'john@gmail.com' contrasena: '123499'.
cliente6:= Cliente crearCliente: 'luis alberto' apellido: 'Spinetta' email: 'luis@gmail.com' contrasena: '123477'.

"-----------servicio------------"
b:='packSeries'.
c:='packFilms'.
e:= 150.
d:= 500.
servicio1:= Servicio crearServicio: b precio: d.
servicio2:= Servicio crearServicio: c precio: e.
servicio3:= Servicio crearServicio:'pack futbol' precio:1500.
servicio4:= Servicio crearServicio:'pack tenis' precio:2000.
ingresoServicio:=true.
[ingresoServicio] whileTrue: [
    
     nom:=Prompter prompt: 'Ingrese nombre del servicio'.
     pre:=Prompter prompt: 'Ingrese el precio del servicio'.
     
     servicio:=Servicio crearServicio: nom precio: pre
     comercio altaCliente: servicio.
     ingresoServicio=Prompter prompt: 'Desea continuar con la carga de servicios? (s / n)'.
     (ingresoServicio = 's')ifTrue: [ingresoServicio= true]
                                   ifFalse: [ingresoServicio= false ].

].
"----------suscripcion---------------"

fecha1:='20/11/2012'.
fecha2:='20/11/2020'.
numero1:= 1.
numero2:= 2.
estado1:='activa'.
estado2:='pausada'.


suscripcion1:= Suscripcion crearSuscripcion: fecha1 numero: numero1 estado: estado1  pago: 100.
suscripcion2:= Suscripcion crearSuscripcion: fecha2 numero: numero2 estado: estado2  pago: 100. 
suscripcion3:= Suscripcion crearSuscripcion: fecha2 numero: 3 estado: 'activa' pago: 100.

suscripcion1 agregarServicio: servicio1.
suscripcion1 agregarServicio: servicio2.
suscripcion2 agregarServicio: servicio2.
suscripcion3 agregarServicio: servicio3.
suscripcion3 agregarServicio: servicio4.


suscripcion1 verServicios.
suscripcion2 verServicios.
suscripcion3 verServicios.

"----------comercio-------------"


comercio altaCliente: cliente3.
comercio altaCliente: cliente2.
comercio altaCliente: cliente4.
comercio altaCliente: cliente5.
comercio altaCliente: cliente6.

comercio altaSuscripcion: suscripcion1.
comercio altaSuscripcion: suscripcion2.
comercio altaSuscripcion: suscripcion3.

comercio verSuscripciones.
comercio verClientes.
comercio verSuscripcionesActivas.
comercio verNombreClientes.
comercio verPrimeraPausada.
comercio cantidadActYPausadas.
estado:= suscripcion2 verEstado.
precio:= suscripcion3 verPago.  "copio en una variable el precio de una suscripcion"

Transcript print: 'precio total de suscripcion 1: ' ; print: precio; cr.  "mostramos el precio de la suscripcion"
Transcript print: 'estado: ' ; print: estado; cr.  
