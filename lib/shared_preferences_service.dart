import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  // Obtiene la instancia de SharedPreferences
  Future<SharedPreferences> _getPrefs() async {
    try {
      return await SharedPreferences.getInstance();
    } catch (e) {
      debugPrint('Error al obtener SharedPreferences: $e');
      rethrow;
    }
  }

  // Guardar un valor String
  Future<bool> saveString(String key, String value) async {
    try {
      final prefs = await _getPrefs();
      return await prefs.setString(key, value);
    } catch (e) {
      debugPrint('Error al guardar String: $e');
      return false;
    }
  }

  // Obtener un valor String, con valor por defecto dentro de la función
  // Tambien puedo devolver directamente null si ocurre un error y gestionar el error o el null en otra capa como en la ViewModel con ayuda del patron Result
  Future<String> getString(String key) async {
    // Asignamos el valor por defecto aquí
    String defaultValue = 'Valor no encontrado';

    try {
      final prefs = await _getPrefs();
      return prefs.getString(key) ?? defaultValue;
    } catch (e) {
      debugPrint('Error al obtener String: $e');
      // Si ocurre un error, asignamos el valor por defecto
      return defaultValue;
    }
  }

  // Guardar un valor entero
  Future<bool> saveInt(String key, int value) async {
    try {
      final prefs = await _getPrefs();
      return await prefs.setInt(key, value);
    } catch (e) {
      debugPrint('Error al guardar int: $e');
      return false;
    }
  }

  // Obtener un valor entero, con valor por defecto dentro de la función
  Future<int> getInt(String key) async {
    // Asignamos el valor por defecto aquí
    int defaultValue = 0;

    try {
      final prefs = await _getPrefs();
      return prefs.getInt(key) ?? defaultValue;
    } catch (e) {
      debugPrint('Error al obtener int: $e');
      return defaultValue; // Si ocurre un error, asignamos el valor por defecto
    }
  }

  // Guardar un valor booleano
  Future<bool> saveBool(String key, bool value) async {
    try {
      final prefs = await _getPrefs();
      return await prefs.setBool(key, value);
    } catch (e) {
      debugPrint('Error al guardar bool: $e');
      return false;
    }
  }

  // Obtener un valor booleano, con valor por defecto dentro de la función
  Future<bool> getBool(String key) async {
    // Asignamos el valor por defecto aquí
    bool defaultValue = false;

    try {
      final prefs = await _getPrefs();
      return prefs.getBool(key) ?? defaultValue;
    } catch (e) {
      debugPrint('Error al obtener bool: $e');
      return defaultValue; // Si ocurre un error, asignamos el valor por defecto
    }
  }

  // Guardar una lista de Strings
  Future<bool> saveStringList(String key, List<String> value) async {
    try {
      final prefs = await _getPrefs();
      return await prefs.setStringList(key, value);
    } catch (e) {
      debugPrint('Error al guardar lista de Strings: $e');
      return false;
    }
  }

  // Obtener una lista de Strings, con valor por defecto dentro de la función
  Future<List<String>> getStringList(String key) async {
    // Asignamos el valor por defecto aquí
    List<String> defaultValue = [];

    try {
      final prefs = await _getPrefs();

      return prefs.getStringList(key) ?? defaultValue;
    } catch (e) {
      debugPrint('Error al obtener lista de Strings: $e');
      return defaultValue; // Si ocurre un error, asignamos el valor por defecto
    }
  }

  // Eliminar un valor
  Future<bool> remove(String key) async {
    try {
      final prefs = await _getPrefs();
      return await prefs.remove(key);
    } catch (e) {
      debugPrint('Error al eliminar valor: $e');
      return false;
    }
  }

  // Limpiar todas las preferencias
  Future<bool> clear() async {
    try {
      final prefs = await _getPrefs();
      return await prefs.clear();
    } catch (e) {
      debugPrint('Error al limpiar todas las preferencias: $e');
      return false;
    }
  }

  // Comprobar si existe una clave
  Future<bool> containsKey(String key) async {
    try {
      final prefs = await _getPrefs();
      return prefs.containsKey(key);
    } catch (e) {
      debugPrint('Error al comprobar si existe la clave: $e');
      return false;
    }
  }
}
