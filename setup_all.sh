#!/bin/bash

# Terminar si ocurre un error
set -e

echo "===================================================="
echo "🚀 Iniciando Setup Completo NATIVO (BCC, Python, Flask y MySQL)"
echo "===================================================="

# 1. Verificar privilegios de administrador
if [ "$EUID" -ne 0 ]; then
  echo "❌ Error: Este script debe ser ejecutado con sudo."
  echo "Ejecútalo usando: sudo ./setup_all.sh"
  exit 1
fi

# 2. Actualizar repositorios del sistema
echo "🔄 Actualizando los índices de paquetes..."
apt-get update -y

# 3. Instalar Python3, Pip y herramientas esenciales de desarrollo
echo "📦 Instalando Python3 y herramientas de desarrollo..."
apt-get install -y python3 python3-pip python3-dev build-essential

# 4. Instalar BCC (eBPF) y las cabeceras del Kernel actual
echo "🧬 Instalando BCC y cabeceras del Kernel..."
apt-get install -y linux-headers-$(uname -r) bpfcc-tools python3-bpfcc libbpfcc

# 5. INSTALACIÓN SANA: Flask y Flask-CORS desde APT para evitar conflictos de entorno


echo "🌐 Instalando dependencias web y de bases de datos a nivel de sistema..."
apt-get install -y python3-flask python3-flask-cors python3-dotenv python3-sqlalchemy


# 6. Instalar los conectores de Python para MySQL
echo "🗄️  Instalando librerías de MySQL para Python..."
pip3 install --no-cache-dir mysql-connector-python pymysql --break-system-packages

# 7. Opcional: Instalar librerías adicionales pasadas por el usuario
if [ $# -gt 0 ]; then
    echo "➕ Instalando librerías adicionales: $@"
    pip3 install --no-cache-dir "$@" --break-system-packages
fi

echo "----------------------------------------------------"
echo "✅ ¡Todo configurado con éxito!"
echo "===================================================="
echo "Puedes ejecutar tu script ejecutando directamente:"
echo "sudo python3 main.py"
echo "===================================================="
