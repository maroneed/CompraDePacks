"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Comercio
	instanceVariableNames: 'suscripciones clientes nombre'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Comercio guid: (GUID fromString: '{0a1c218e-a883-4201-834a-fe133ad5e9dc}')!
Comercio comment: ''!
!Comercio categoriesForClass!Kernel-Objects! !
!Comercio methodsFor!

altaCliente:unCliente
"agrega un nuevo cliente a la lista de clientes"

clientes add: unCliente.!

altaSuscripcion: unaSuscripcion
"agrega una nueva suscripcion a la lista de suscripciones"

suscripciones add: unaSuscripcion.!

bajaCliente:unCliente
"elimina el cliente pasado por parametro"
clientes remove: unCliente.!

cantidadActYPausadas
"devuelve la cantidad de suscripciones activas y pausadas"

|cantidadActivasYPausadas sinRepetir diccionarioFinal|

"creo una coleccion"
cantidadActivasYPausadas:= OrderedCollection new.
suscripciones do:[:sus| cantidadActivasYPausadas add: sus verEstado ]. "almaceno los estados de cada suscripcion"
sinRepetir:= cantidadActivasYPausadas asSet. "creo uno coleccion que no repita los mismos estados"
diccionarioFinal:= Dictionary new. "creo un diccionario"

"ahora recorro la lista de no repetidos para ir llenando el diccionario con esos estados (como clave) y como valor, agrego la cantidad de veces que se repiten esos estados en la lista primera (la que contemplaba estados repetidos). Así logro un diccionario con los distintos estados, osea activa y pausada y la cantidad de suscripciones que tienen esos estados"
sinRepetir do:[:estado| diccionarioFinal  at:estado put:(cantidadActivasYPausadas occurrencesOf: estado )].
diccionarioFinal inspect. !

iniComercio:unNombre 
"Inicializa una instancia de la clase Comercio"
nombre:= unNombre .
clientes:= OrderedCollection new.
suscripciones:= OrderedCollection new.!

verCargarClientesExeptuando: unCliente
"carga todos los clientes menos el pasado por parametro"
|clientesReject|
clientesReject= clientes reject:[:cli| cli verNombre = unCliente ].

clientesReject inspect.!

verClientes
"devuelve lista de clientes"

clientes inspect.!

verNombre
"devuelve el nombre del comercio"

^nombre .!

verNombreClientes
"muestra solo los nombre de los clientes"

|nombres|
nombres:= clientes collect:[:cli| cli verNombre].
nombres inspect.!

verPrimeraPausada
"muestra la primer suscripcion pausada"
|primeraPausada|

primeraPausada:= suscripciones detect:[:sus| sus verEstado ='pausada'] ifNone:[^nil].

primeraPausada inspect.

!

verSuscripciones
"devuelve las suscripciones"

suscripciones inspect.!

verSuscripcionesActivas
"muestra solo las suscripciones activas"

|activas|
activas:= suscripciones select:[:cli| cli verEstado='activa'].
activas inspect.! !
!Comercio categoriesFor: #altaCliente:!public! !
!Comercio categoriesFor: #altaSuscripcion:!public! !
!Comercio categoriesFor: #bajaCliente:!public! !
!Comercio categoriesFor: #cantidadActYPausadas!public! !
!Comercio categoriesFor: #iniComercio:!public! !
!Comercio categoriesFor: #verCargarClientesExeptuando:!public! !
!Comercio categoriesFor: #verClientes!public! !
!Comercio categoriesFor: #verNombre!public! !
!Comercio categoriesFor: #verNombreClientes!public! !
!Comercio categoriesFor: #verPrimeraPausada!public! !
!Comercio categoriesFor: #verSuscripciones!public! !
!Comercio categoriesFor: #verSuscripcionesActivas!public! !

!Comercio class methodsFor!

crearComercioNombre: unNombre
"Crea una instancia de la clase Comercio inicializa"
^(self new) iniComercio: unNombre .! !
!Comercio class categoriesFor: #crearComercioNombre:!public! !

