Auto WapPush
============

Con este plugin podrás enviar a tu propio móvil notificaciones WapPush desde una aplicación rails. Puedes obtener más información de la API en [la página oficial de la API](http://open.movilforum.com/?q=node/425).

El plugin está basado en [action-sms](http://action-sms.googlecode.com/) desarrollado por [Sergio Gil Pérez de la Manga](http://github.com/porras), pero no sobreescribe ningún método de actionMailer por las características que tiene esta API que sólo permite enviarte mensajes a ti mismo.


Uso
---

  1. Instálalo!
    
        script/plugin install http://github.com/openmovilforum/auto_wappush/tree/master
    
  2. Crear el archivo `config/autowp.yml` que contendrá los datos por defecto para enviar los mensajes. 
  
        gateway: movistar
        login: 666666666
        password: my_fancy_password_666

  Esto es totalmente opcional, puedes inicializar cada vez la clase pasándole cada vez un login y un password distinto
  
  3. Para enviar un mensaje al usuario desde la aplicación:

        msg = AutoWappush.new
        msg.send("Mensaje", "url")
  
  Si tienes que enviar a un usuario concreto puedes hacerlo:

        msg = AutoWappush.new(login, password, gateway)
        msg.send("Mensaje", "url")


Actualmente viene con el gateway movistar por defecto, de hecho puedes usar la clase `WpMovistarGateway` directamente si siempre vas a usar como gateway movistar

        msg = WpMovistarGateway.new(login, password)
        msg.send("Mensaje", "url")
