// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Dark mode.dart';
import '../config/common.dart';
import 'Login.dart';
import 'Sign phone.dart';


class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  bool value = false;
  bool _obsecuretext1 = true;
  ColorNotifire notifier = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: notifier.background,
      appBar: AppBar(
        backgroundColor: notifier.background,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: notifier.textColor,
            size: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppConstants.Height(50),
              Text(
                "Create your account",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Manrope-SemiBold",
                    color: notifier.isDark ? Colors.white : null),
              ),
              AppConstants.Height(10),
              const Text(
                "Let's get started with a free Financy account.",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff64748B),
                    fontFamily: "Manrope-Medium"),
              ),
              AppConstants.Height(10),
              Container(
                height: height / 13,
                decoration: BoxDecoration(
                    color: notifier.textField,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: TextStyle(color: notifier.textColor),
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      border: const OutlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(color: notifier.textFieldHintText)),
                ),
              ),
              // CommonTextfield(text: "Full name", textcolor: Color(0xff94A3B8)),
              AppConstants.Height(15),
              Container(
                height: height / 13,
                decoration: BoxDecoration(
                    color: notifier.textField,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: TextStyle(color: notifier.textColor),
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: const OutlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(color: notifier.textFieldHintText)),
                ),
              ),
              AppConstants.Height(15),
              Container(
                height: height / 13,
                decoration: BoxDecoration(
                    color: notifier.textField,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: TextStyle(color: notifier.textColor),
                  obscureText: _obsecuretext1,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const OutlineInputBorder(borderSide: BorderSide.none),
                    hintStyle: TextStyle(color: notifier.textFieldHintText),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecuretext1 = !_obsecuretext1;
                          });
                        },
                        icon: _obsecuretext1
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : Icon(
                                Icons.visibility_off_outlined,
                                color: notifier.passwordIcon,
                              )),
                  ),
                ),
              ),
              AppConstants.Height(20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const phone(),
                      ));
                },
                child: Container(
                  height: height / 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff6B39F4),
                  ),
                  child: const Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontFamily: "Manrope-Bold"),
                  )),
                ),
              ),
              AppConstants.Height(10),
              Row(
                children: [
                  Checkbox(
                    side: const BorderSide(color: Color(0xff334155)),
                    activeColor: const Color(0xff6B39F4),
                    checkColor: const Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      "I certify that I'm 18 years of age or older, and I \n agree to the User Agreement and Privacy Policy.",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Manrope-Medium",
                          color: notifier.textColor),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              AppConstants.Height(15),
              const Center(
                child: Text(
                  "--------------- Or sign in with ---------------",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff64748B),
                      fontFamily: "Manrope-Medium"),
                ),
              ),
              AppConstants.Height(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: OutlinedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          side: MaterialStatePropertyAll(BorderSide(
                              color: notifier.getContainerBorder))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage("assets/images/google.png"),
                            height: 19,
                            width: 16,
                          ),
                          Text(
                            " Google",
                            style: TextStyle(
                                color: notifier.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontFamily: "Manrop-SemiBold",
                                fontSize: 16),
                          )
                        ],
                      )),
                ),
              ),
              AppConstants.Height(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontFamily: "Manrope-Medium", color: Color(0xff64748B)),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff6B39F4),
                            fontFamily: "Manrope-Medium"),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
