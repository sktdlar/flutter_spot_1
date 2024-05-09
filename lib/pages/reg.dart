
import 'package:flutter/material.dart';
import 'package:flutter_spot_1/database/auth/service.dart';
import 'package:flutter_spot_1/database/collections/users_collections.dart';
import 'package:flutter_spot_1/theme/themeLight.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController phoneNumberController = TextEditingController();
  AuthService authService = AuthService();
  UsersCollection usersCollection = UsersCollection();
  bool isHintHided = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Transform.scale(
              scale: 0.7,
              child: const Image(
                image: AssetImage("images/logo.png"),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 242, 50, 7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: double.infinity,
                      child: Column(children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Введите почту",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              fontFamily: GoogleFonts.montserrat().fontFamily),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text(
                            "Ваша почта будет использоваться для доступа к аккаунту.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 55,
                          child: TextField(
                            style: TextStyle(
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              prefixIcon:const Icon(Icons.mail),
                              hintText: "Введите почту",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily),
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                              ),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(context, '/reg_pass');
                                },
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    )
                                  ),
                                  backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 255, 255),
                                  )
                                ),
                                child: Text(
                                  "Далее",
                                  style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ),
                            ))
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
