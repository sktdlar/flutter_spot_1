

import 'package:flutter_spot_1/pages/auth.dart';
import 'package:flutter_spot_1/pages/code.dart';
import 'package:flutter_spot_1/pages/reg.dart';
import 'package:flutter_spot_1/pages/reg_password.dart';

final routes = {
  '/auth': (context) => const AuthPage(),
 '/reg': (context) => const RegistrationPage(),
  '/ver': (context) =>  VerificationPage(verificationId: '',),
  '/reg_pass': (context) => const RegistrationPasswordPage(),

};
