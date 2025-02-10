import 'dart:io';

class ApiConfig {
  static String get baseUrl {
    if (Platform.isAndroid) {
      return "http://10.0.2.2:3000/api"; // Per emulatori Android
    } else if (Platform.isIOS) {
      return "http://localhost:3000/api"; // Per iOS simulator
    } else {
      return "http://192.168.1.100:3000/api"; // Sostituisci con il tuo IP locale
    }
  }
}