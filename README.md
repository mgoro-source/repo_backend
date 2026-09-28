# proyecto_backend_lanzi
Proyecto Backend - Sistema de Reservas de Club Deportivo - IDS Lanzillotta FIUBA 

---


## 📦 Instalación y Configuración

Seguí estos pasos para configurar el entorno de desarrollo en tu máquina local:

### Clonar el repositorio

```bash
git clone https://github.com
cd tu-repositorio
```

### Instalar dependencias

```bash
ejecutar: sudo bash setup_all.sh
```

### Variables de entorno

```bash
Crea un archivo `.env` en la raíz del proyecto basándote en el archivo `.env.example`:

  .env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=contraseña_base_datos
DB_NAME=nombre_base_datos
DB_PORT=3306
```
---
## Ejecutar script de base de datos
```
 Ejecutar int_db.sql que se encuentra en la carpeta db.

---
## 🚀 Uso / Ejecución

Para iniciar el servidor en modo de desarrollo, ejecutá:

```
 sudo python3 app.py
```

El proyecto estará disponible en tu navegador en `http://localhost:5000`.

---
