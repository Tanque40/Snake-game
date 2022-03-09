# Buenas prácticas con Ruby

Las __buenas prácticas en Ruby__ nos sirven para no llenar nuestra computadora con todas las gemas y datos repetidos que puedan causar problemas con la ejecución de otros problemas.

Por lo que para ejecutar este juego con buenas prácticas te recomiendo que una vez descargado el juego, ejecutes el comando:

~~~bash
bundle config --local vendor/bundler
~~~

Este comando lo que hará es que creará una carpeta _vendor_ en la que se instalarán las gemas con las versiones necesarias para el proyecto.

Posteriormente ejecutamos:

~~~bash
bundle install
~~~

Como se mencionó este comando lo que hará será instalar las gemas en la carpeta _vendor/bundler_. Para poder ejecutar el juego con dichas gemas usaremos el comando:

~~~bash
bundle exec ruby src/app.rb
~~~

Esto quiere decir que _Ruby_ se ejecutara con las gemas que configuramos para el _bundle_.