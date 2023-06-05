import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../login/login_screen.dart';
import '../widgets/email.dart';
import '../widgets/global_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: [
          SizedBox(
            width: width * (28 / 375),
          ),
          SvgPicture.asset(
            AppImages.back,
          ),
          const Spacer(),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * (24 / 375)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * (36 / 812),
              ),
              const Text(
                "Create account",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: AppColors.C_1F5460,
                    fontFamily: "Sora"),
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              const Text(
                "Sign up to get started!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.C_879EA4,
                    fontFamily: "Sora"),
              ),
              SizedBox(
                height: height * (36 / 812),
              ),
              const EmailField(text: "Username", img: AppImages.avatar),
              SizedBox(
                height: height * (24 / 812),
              ),
              const EmailField(text: "Email address", img: AppImages.email),
              SizedBox(
                height: height * (24 / 812),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: height * (50 / 812),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColors.C_1F5460.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(4)),
                child: TextField(
                  cursorHeight: 20,
                  cursorWidth: 1.4,
                  cursorColor: AppColors.C_879EA4.withOpacity(0.2),
                  obscureText: passwordVisible,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    border: InputBorder.none,
                    icon: SvgPicture.asset(AppImages.password),
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFF96A7AF),
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.C_879EA4,
                        fontFamily: "Sora"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          const BorderSide(width: 1, color: AppColors.white),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * (24 / 812),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: height * (50 / 812),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColors.C_1F5460.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(4)),
                child: TextField(
                  cursorHeight: 20,
                  cursorWidth: 1.4,
                  cursorColor: AppColors.C_879EA4.withOpacity(0.2),
                  obscureText: passwordVisible,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    border: InputBorder.none,
                    icon: SvgPicture.asset(AppImages.password),
                    hintText: "Confirm password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFF96A7AF),
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.C_879EA4,
                        fontFamily: "Sora"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          const BorderSide(width: 1, color: AppColors.white),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * (24 / 812),
              ),
              const GlobalButton(
                  title: "Log in",
                  buttonColor: AppColors.C_FFCA42,
                  img: "",
                  textColor: AppColors.C_1F5460),
              const GlobalButton(
                  title: "Log in using Apple",
                  buttonColor: AppColors.black,
                  img: AppImages.apple,
                  textColor: AppColors.white),
              const GlobalButton(
                  title: "Log in using Google",
                  buttonColor: AppColors.C_F0F5F2,
                  img: AppImages.google,
                  textColor: AppColors.C_10405A),
              SizedBox(
                height: height * (28 / 812),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already member? ",
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.C_1F5460),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const LoginPage();
                          }));
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontFamily: "Sora",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.C_1F5460,
                          ),
                        ),
                      ),
                      Container(
                        width: width * (52 / 375),
                        height: 1,
                        color: AppColors.C_FFC542,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
