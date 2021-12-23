import 'package:injector/injector.dart';
import 'package:my_instrument/services/auth/auth_model.dart';
import 'package:my_instrument/services/auth/auth_service.dart';
import 'package:my_instrument/services/main/category/category_service.dart';
import 'package:my_instrument/services/main/message/message_service.dart';
import 'package:my_instrument/services/main/profile/profile_service.dart';
import 'package:my_instrument/services/main/signalr/signalr_service.dart';

class InjectorInitializer {
  static initialize() {
    appInjector.registerSingleton<AuthService>(() => AuthService());
    appInjector.registerSingleton<CategoryService>(() => CategoryService());
    appInjector.registerSingleton<MessageService>(() => MessageService());
    appInjector.registerSingleton<ProfileService>(() => ProfileService());
    appInjector.registerSingleton<AuthModel>(() => AuthModel());
    appInjector.registerSingleton<SignalRService>(() => SignalRService());
  }
}

get appInjector {
  return Injector.appInstance;
}