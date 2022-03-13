# Buenas prácticas con Ruby

Las __buenas prácticas en Ruby__ nos sirven para no llenar nuestra computadora con gemas y datos repetidos que puedan causar problemas con la ejecución de otros programas.

Para ejecutar este juego con buenas prácticas, lo ideal es que una vez descargado el juego, ejecutes el comando:

~~~bash
bundle config --local vendor/bundler
~~~

Este comando creará una carpeta con el nombre _vendor_ en la que se instalarán las gemas con las versiones necesarias para el proyecto.

Posteriormente ejecutamos:

~~~bash
bundle install
~~~

Como se mencionó, se instalaran las gemas en la carpeta _vendor/bundler_. Para poder ejecutar el juego con dichas gemas usaremos el comando:

~~~bash
bundle exec ruby src/app.rb
~~~

Esto quiere decir que _Ruby_ se ejecutara únicamente con las gemas que configuramos para el _bundle_.
