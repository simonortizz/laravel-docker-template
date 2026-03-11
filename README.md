# Laravel Docker Template

Template base para iniciar proyectos **Laravel con Docker** de forma rápida y consistente.

Este repositorio incluye una configuración lista para usar con:

* **Nginx**
* **PHP-FPM**
* **MySQL**
* **phpMyAdmin**
* **Docker Compose**

La idea es que este repositorio funcione como **plantilla base** para crear nuevos proyectos Laravel sin tener que configurar Docker cada vez.

---

# Arquitectura

El entorno levanta los siguientes servicios:

Browser
→ Nginx
→ PHP-FPM
→ Laravel
→ MySQL

También se incluye **phpMyAdmin** para gestionar la base de datos desde el navegador.

---

# Requisitos

Antes de usar este template necesitas tener instalado:

* Docker
* Docker Compose
* Git

---

# Crear un proyecto usando este template

Este repositorio está configurado como **Template Repository**, lo que permite crear nuevos proyectos basados en esta estructura.

### Paso 1

Ir al repositorio en GitHub y hacer click en:

  Use this template

Esto creará un nuevo repositorio basado en este template.

Ejemplo: gym_app

---

### Paso 2

Clonar el nuevo repositorio:

  git clone https://github.com/TU_USUARIO/gym_app

Entrar al proyecto:

  cd gym_app

---

### Paso 3

Crear el archivo de configuración de Laravel:

  cp src/laravel/.env.example src/laravel/.env

---

### Paso 4

Levantar los contenedores:

  docker compose up -d --build

---

### Paso 5

Generar la clave de Laravel:

  docker compose exec app php artisan key:generate

---

### Paso 6

Ejecutar migraciones:

  docker compose exec app php artisan migrate

---

# Acceso al proyecto

Laravel: http://localhost:8080

phpMyAdmin: http://localhost:8081

Usuario MySQL:root

Password: root

---

# Estructura del proyecto

laravel-docker-template

docker
 └ nginx
     └ default.conf

scripts
 └ deploy.sh

src
 └ laravel

Dockerfile
docker-compose.yml
docker-compose.prod.yml
README.md

---

# Comandos útiles

Levantar contenedores:

  docker compose up -d --build

Detener contenedores:

  docker compose down

Ejecutar comandos de Laravel:

  docker compose exec app php artisan

Entrar al contenedor:

  docker compose exec app bash

---

# Scripts del proyecto

La carpeta scripts/ contiene comandos automatizados para tareas comunes del proyecto.

Ejemplo:

scripts/
 └ deploy.sh

Este script permite ejecutar un deploy completo automáticamente sin tener que escribir múltiples comandos manualmente.

Ejecutar:
  ./scripts/deploy.sh
Esto realizará:
  actualizar código desde git
  reconstruir contenedores
  ejecutar migraciones
  limpiar cache de Laravel

Los scripts ayudan a estandarizar procesos y evitar errores manuales, especialmente en entornos de producción.

Deploy en servidor

Para desplegar el proyecto en un servidor (VPS):
Clonar el repositorio
  git clone repo
  cd proyecto
Crear archivo .env
  cp src/laravel/.env.example src/laravel/.env
Generar key
  docker compose -f docker-compose.prod.yml run --rm app php artisan key:generate
Levantar contenedores
  docker compose -f docker-compose.prod.yml up -d --build
Ejecutar migraciones
  docker compose -f docker-compose.prod.yml exec app php artisan migrate

---

# Objetivo del template

Este template permite iniciar nuevos proyectos Laravel con un entorno Docker listo para:
  desarrollo local
  despliegue en servidores

  proyectos reutilizables

De esta forma, cada nuevo proyecto puede enfocarse únicamente en desarrollar la lógica de la aplicación (controladores, modelos, migraciones, rutas, lógica de negocio) sin tener que repetir configuraciones de infraestructura.
