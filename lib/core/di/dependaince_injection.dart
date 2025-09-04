import 'package:fruits/core/services/firebase_auth_services.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo_implemintion.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<FirebaseAuthServices>(
      () => FirebaseAuthServices());
  // AuthRepo registration
  // AuthRepo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()),
  );
}
