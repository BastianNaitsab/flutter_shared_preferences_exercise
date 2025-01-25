# 🚀 Flutter Shared Preferences Exercise

[![Flutter](https://img.shields.io/badge/Flutter-Framework-blue)](https://flutter.dev)
![Dart](https://img.shields.io/badge/Dart-Language-blue)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)


## 📚 Descripción

Este es un proyecto de aprendizaje creado para experimentar con el uso de **SharedPreferences** en Flutter. **SharedPreferences** es una forma sencilla y eficiente de almacenar datos clave-valor de manera persistente, permitiendo guardar configuraciones o el estado de la aplicación entre sesiones.

En este proyecto se implementan funciones básicas de **SharedPreferences** para almacenar y recuperar datos como enteros, cadenas y listas, lo que ayuda a comprender cómo gestionar configuraciones locales en aplicaciones móviles.

## 🎯 Objetivo del Proyecto

- Comprender y experimentar con **SharedPreferences** en Flutter.
- Implementar almacenamiento local para datos persistentes.
- Gestionar el estado de la aplicación usando **SharedPreferences**.
- Aprender a estructurar el código de una manera eficiente y reutilizable.

## 🛠️ Características

- **Guardar y recuperar datos**: Funciones para guardar y obtener cadenas, enteros, booleanos y listas.
- **Manejo de errores**: Implementación de manejo de errores para garantizar que la app no se interrumpa por fallos en el almacenamiento local.
- **Estructura de código limpia**: Uso de un servicio `SharedPreferencesService` para centralizar el acceso y gestión de los datos.
- **Interfaz simple**: Un contador que se incrementa y se guarda en `SharedPreferences`, lo que permite ver cómo la aplicación mantiene su estado entre sesiones.

## 📂 Estructura del Proyecto

```plaintext
lib/
├── main.dart           # Punto de entrada de la app
├── shared_preferences_service.dart   # Servicio para manejar SharedPreferences
```

## 🚀 Cómo Ejecutar el Proyecto

1. Asegúrate de tener Flutter instalado en tu sistema. Si no, sigue las instrucciones en la [documentación oficial](https://flutter.dev/)

2. Clona este repositorio:

```bash
git clone https://github.com/BastianNaitsab/flutter_shared_preferences_exercise
```

3. Navega al directorio:

```bash
cd flutter_shared_preferences_exercise
```

4. Instala las dependencias:

```bash
flutter pub get
```

5. Ejecuta la aplicación:

```bash
flutter run
```

## 🧰 Herramientas Usadas

- **Flutter SDK:** Framework
- **Dart:** Lenguaje de Programacion
- **VS Code:** Entorno de Desarrollo
- **Android Studio:** Emulador
- **Shared Preferences:** Libreria

## 📖 Lo que He Aprendido

- 🌟 Cómo trabajar con **SharedPreferences** en Flutter para almacenar y recuperar datos de manera persistente.
- 🌟 La importancia de centralizar la lógica de acceso a datos mediante un servicio (SharedPreferencesService).
- 🌟 Manejo de errores y uso de valores por defecto para garantizar una experiencia de usuario fluida.

## 📋 Próximos Pasos

- Mejorar el manejo de errores con un patrón como Result o Either.

## 🤝 Contribuciones

Este proyecto es principalmente para aprendizaje personal, pero siéntete libre de proponer mejoras o sugerencias.

## 📞 Contacto
Bastian Naitsab - [devmentesacontacto@gmail.com](mailto:devmentesacontacto@gmail.com)  
GitHub: [BastianNaitsab](https://github.com/BastianNaitsab)