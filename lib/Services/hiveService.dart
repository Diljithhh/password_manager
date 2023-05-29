import 'dart:html';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:password_manager/Model/credentials.dart';

class LocalStorageService {
  static final String credentialBoxKey = 'credentialboxkey';
  static final LocalStorageService _instance = LocalStorageService._internal();

  factory LocalStorageService() => _instance;

  LocalStorageService._internal();

  Future<void> initializeHive() async {
    await Hive.initFlutter();

      if (!Hive.isAdapterRegistered(1)) { // Just to make sure it doesn't initialize twice, it was causing some minor issues without this check
      Hive.registerAdapter(CredentialsAdapter());
    }

    await Hive.openBox<String>(credentialBoxKey);
  }


void saveCredentials(Credential credential) {
    Hive.box<Credential>(credentialBoxKey).add(credential);
    //saveBalance(transaction); 
  }

  List<Credential> getAllTransactions() {
    return Hive.box<Credential>(credentialBoxKey).values.toList();
  }


}
