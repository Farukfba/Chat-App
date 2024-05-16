import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/services/alert_service.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:chat_app/services/database%20service.dart';
import 'package:chat_app/services/media%20service.dart';
import 'package:chat_app/services/navigation_service.dart';
import 'package:chat_app/services/storage%20service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

Future<void> setupFirebase() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
}
Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;
  getIt.registerSingleton<AuthService>(
    AuthService()
  );
  getIt.registerSingleton<NavigationService>(
      NavigationService()
  );
  getIt.registerSingleton<AlertService>(
      AlertService()
  );
  getIt.registerSingleton<MediaService>(
      MediaService()
  );
  getIt.registerSingleton<StorageService>(
      StorageService()
  );
  getIt.registerSingleton<DatabaseService>(
      DatabaseService()
  );
}