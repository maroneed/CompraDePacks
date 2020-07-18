"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Servicio
	instanceVariableNames: 'tipoServicio precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Servicio guid: (GUID fromString: '{ced670d0-0fe3-444f-ab8a-9985e79091c3}')!
Servicio comment: ''!
!Servicio categoriesForClass!Kernel-Objects! !
!Servicio methodsFor!

iniServicio:unTipoServicio precio:unPrecio
"Inicializa una instancia de la clase Cliente"
tipoServicio:= unTipoServicio.
precio:= unPrecio.!

verPrecio
"devuelve el precio"

^precio.!

verTipoServicio
"devuelve el tipo de servicio"

^tipoServicio.! !
!Servicio categoriesFor: #iniServicio:precio:!public! !
!Servicio categoriesFor: #verPrecio!public! !
!Servicio categoriesFor: #verTipoServicio!public! !

!Servicio class methodsFor!

crearServicio:unTipoServicio precio:unPrecio
"Crea una instancia de la clase Cliente inicializada"
^(self new) iniServicio: unTipoServicio precio:unPrecio.! !
!Servicio class categoriesFor: #crearServicio:precio:!public! !

