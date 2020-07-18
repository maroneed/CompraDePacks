"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Cliente
	instanceVariableNames: 'nombre apellido email contrasena'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{5aa3ef94-c282-4ece-bc9b-cce2019e1eb0}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

iniCliente:unNombre apellido:unApellido email:unEmail contrasena:unaContrasena 
"Inicializa una instancia de la clase Cliente"
nombre:= unNombre.
apellido:= unApellido.
email:= unEmail.
contrasena:= unaContrasena.

!

modificarContrasena:unaContrasena
"modifica l acontraseña"

contrasena:= unaContrasena.!

modificarEmail:unEmail
"modifica l acontraseña"

contrasena:= unEmail.!

verApellido
"devuelve el apellido del cliente"

^apellido.!

verContrasena
"devuelve la contraseña del cliente"

^contrasena .!

verEmail
"devuelve el nombre del cliente"

^email.!

verNombre
"devuelve el nombre del cliente"

^nombre.! !
!Cliente categoriesFor: #iniCliente:apellido:email:contrasena:!public! !
!Cliente categoriesFor: #modificarContrasena:!public! !
!Cliente categoriesFor: #modificarEmail:!public! !
!Cliente categoriesFor: #verApellido!public! !
!Cliente categoriesFor: #verContrasena!public! !
!Cliente categoriesFor: #verEmail!public! !
!Cliente categoriesFor: #verNombre!public! !

!Cliente class methodsFor!

crearCliente:unNombre apellido:unApellido email:unEmail contrasena:unaContrasena
"Crea una instancia de la clase Cliente inicializada"
^(self new) iniCliente: unNombre apellido: unApellido email: unEmail contrasena: unaContrasena! !
!Cliente class categoriesFor: #crearCliente:apellido:email:contrasena:!public! !

