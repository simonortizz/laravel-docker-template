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

docker/
nginx/
default.conf

src/
laravel/

Dockerfile
docker-compose.yml

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

# Objetivo del template

Este template permite iniciar nuevos proyectos Laravel con un entorno Docker listo para desarrollo y despliegue, evitando repetir configuraciones en cada proyecto.

Cada nuevo proyecto puede enfocarse únicamente en desarrollar la lógica de la aplicación (controladores, modelos, migraciones, rutas, etc.).
