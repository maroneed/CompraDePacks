"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Suscripcion
	instanceVariableNames: 'fecha numero servicios estado pago cliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Suscripcion guid: (GUID fromString: '{35c9616e-58ff-4975-924e-e24ed3f41fb9}')!
Suscripcion comment: ''!
!Suscripcion categoriesForClass!Kernel-Objects! !
!Suscripcion methodsFor!

agregarServicio: unServicio
"agrega un nuevo servicio"

servicios at: unServicio verTipoServicio put: unServicio  verPrecio .



!

eliminarServicio:unServicio
"elimina el elemento que coincide"

servicios remove: unServicio.!

iniSuscripcion: unaFecha numero: unNumero estado: unEstado pago:unPago cliente:unCliente
"Inicializa una instancia de la clase Cliente"

fecha := unaFecha.
numero := unNumero.
servicios := Dictionary new.
estado := unEstado.
pago:= unPago.
cliente:= unCliente.!

modificarEstado:unEstado
"modifica el estado de la suscripcion"

estado:=unEstado.!

modificarPago:unPago
"modifica el precio de la suscripcion"

pago:=unPago.!

verCliente
"muestra el apellido de cliente titular de la suscripcion"

^cliente.!

verEstado
"devuelve el estado de la suscripcion"

^estado.!

verNumero
"devuelve el numero de la suscripcion"

^numero.!

verPago
"devuelve el pago de la suscripcion"

pago:= servicios inject: 0 into: [:x :elem | x+ elem]. 


^pago.!

verServicios
"devuelve los servicios de la suscripcion"

servicios inspect.! !
!Suscripcion categoriesFor: #agregarServicio:!public! !
!Suscripcion categoriesFor: #eliminarServicio:!public! !
!Suscripcion categoriesFor: #iniSuscripcion:numero:estado:pago:cliente:!public! !
!Suscripcion categoriesFor: #modificarEstado:!public! !
!Suscripcion categoriesFor: #modificarPago:!public! !
!Suscripcion categoriesFor: #verCliente!public! !
!Suscripcion categoriesFor: #verEstado!public! !
!Suscripcion categoriesFor: #verNumero!public! !
!Suscripcion categoriesFor: #verPago!public! !
!Suscripcion categoriesFor: #verServicios!public! !

!Suscripcion class methodsFor!

crearSuscripcion:unaFecha numero:unNumero  estado:unEstado pago:unPago cliente:unCliente
"Crea una instancia de la clase Cliente inicializada"
^(self new) iniSuscripcion: unaFecha numero:unNumero  estado:unEstado pago:unPago cliente:unCliente! !
!Suscripcion class categoriesFor: #crearSuscripcion:numero:estado:pago:cliente:!public! !

