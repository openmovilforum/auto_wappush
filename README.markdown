Auto WapPush
============

Con este plugin podrás enviar a tu propio móvil notificaciones WapPush desde una aplicación rails. Puedes obtener más información de la API en [la página oficial de la API](http://open.movilforum.com/?q=node/425).

El plugin está basado en [action-sms](http://action-sms.googlecode.com/) desarrollado por [Sergio Gil Pérez de la Manga](http://github.com/porras), pero no sobreescribe ningún método de actionMailer por las características que tiene esta API que sólo permite enviarte mensajes a ti mismo.


Uso
---

  1. Instálalo!
    `script/plugin install http://github.com/openmovilforum/auto_wappush/tree/master`
    
  2. Crear el archivo `config/autowp.yml` que contendrá los datos por defecto.

