// ignore_for_file: file_names
// import 'package:Crowwn/Home/bottom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Account&setting/About App.dart';
import '../Account&setting/Bank Account.dart';
import '../Account&setting/Help Center.dart';
import '../Account&setting/Personal data.dart';
import '../Account&setting/Privacy&Policy.dart';
import '../Account&setting/Push Notification.dart';
import '../Account&setting/Refferal Code.dart';
import '../Account&setting/Select Language.dart';
import '../Account&setting/Social Media Link.dart';
import '../Account&setting/Terms&conditions.dart';
import '../Activity&History/Transaction History.dart';
import '../Dark mode.dart';
import '../Message & Notification/Notifications.dart';
import '../config/common.dart';
import 'bottom.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ColorNotifire notifier = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: notifier.background,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomBarScreen(),
              ),
            );
          },
          child: Image.asset(
            "assets/images/arrow-narrow-left (1).png",
            scale: 3,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Personal_data(),
                ),
              );
            },
            child: Image.asset(
              "assets/images/edit.png",
              scale: 3,
              color: Colors.white,
            ),
          ),
          // Switch(
          //   value: notifier.isDark,
          //   onChanged: (bool value) {
          //     notifier.isavalable(value);
          //   },
          // ),
          SizedBox(width: 10),
        ],
        backgroundColor: const Color(0xff6B39F4),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2.7,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Background (2).png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppConstants.Height(30),
                    Center(
                      child: Container(
                        height: height / 7,
                        width: width / 2.5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    AppConstants.Height(20),
                    const Center(
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                          fontFamily: "Manrope-Bold",
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    AppConstants.Height(5),
                    const Center(
                      child: Text(
                        "johndoe@mail.com",
                        style: TextStyle(
                          fontFamily: "Manrope-Regular",
                          color: Color(0xffB59CFA),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppConstants.Height(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Reffle_code(),
                        ),
                      );
                    },
                    child: Container(
                      height: 88,
                      decoration: BoxDecoration(
                        color: notifier.background,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xffB59CFA),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Invite your friends and win\n free asset up to 100",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Manrope-Regular",
                                    color: notifier.textColor,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            height: height / 9,
                            width: width / 5,
                            child: Image.asset(
                              "assets/images/Gift_1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppConstants.Height(20),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff64748B),
                      fontFamily: "Manrope-Bold",
                    ),
                  ),
                  AppConstants.Height(10),
                  Text(
                    "Account Details",
                    style: TextStyle(
                      fontFamily: "Manrope-Bold",
                      color: notifier.textColor,
                      fontSize: 16,
                    ),
                  ),
                  AppConstants.Height(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Personal_data(),
                        ),
                      );
                    },
                    child: accountDetails(
                      image: "assets/images/Person.png",
                      name: "Personal Details",
                      desc: "Your account information",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Personal_data(),
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: accountDetails(
                      image: "assets/images/Identycard_.png",
                      name: "Identify Verification",
                      desc: "Your verification status",
                      onPress: () {},
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const Transaction(),
                  //       ),
                  //     );
                  //   },
                  //   child: accountDetails(
                  //     image: "assets/images/receipt.png",
                  //     name: "Transaction History",
                  //     desc: "Your transaction details",
                  //     onPress: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const Transaction(),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const Bank_account(),
                  //       ),
                  //     );
                  //   },
                  //   child: accountDetails(
                  //     image: "assets/images/card.png",
                  //     name: "Bank Account",
                  //     desc: "Manage your bank account",
                  //     onPress: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const Bank_account(),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // Text(
                  //   "Features",
                  //   style: TextStyle(
                  //     color: notifier.textColor,
                  //     fontSize: 16,
                  //     fontFamily: "Manrope-Bold",
                  //   ),
                  // ),
                  // AppConstants.Height(20),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: accountDetails_(
                  //     image: "assets/images/gift.png",
                  //     name: "Mission",
                  //     desc: "Get more rewards",
                  //     onPress: () {},
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: accountDetails_(
                  //     image: "assets/images/refresh-circle.png",
                  //     name: "Auto Invest",
                  //     desc: "Manage auto investment",
                  //     onPress: () {},
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const Social_media(),
                  //       ),
                  //     );
                  //   },
                  //   child: accountDetails_(
                  //     image: "assets/images/Instagram outlined.png",
                  //     name: "Social Media",
                  //     desc: "All Social Media",
                  //     onPress: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const Social_media(),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  AppConstants.Height(20),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontFamily: "Manrope-Bold",
                        color: notifier.textColor,
                        fontSize: 16),
                  ),
                  AppConstants.Height(20),
                  GestureDetector(
                    onTap: () {},
                    child: accountDetails(
                      image: "assets/images/Privacy.png",
                      name: "Privacy & Security",
                      desc: "PIN & Biometric protection",
                      onPress: () {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Push_Notifications(),
                          ));
                    },
                    child: accountDetails(
                      image: "assets/images/notification.png",
                      name: "Push Notifications",
                      desc: "Notification preferences",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Notifications(),
                            ));
                      },
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const Select_language(),
                  //         ));
                  //   },
                  //   child: accountDetails1(
                  //     image: "assets/images/Translate.png",
                  //     name: "Languange",
                  //     desc: "English (USA)",
                  //     onPress: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const Select_language(),
                  //           ));
                  //     },
                  //   ),
                  // ),
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: notifier.getContainerBorder),),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: notifier.tabBar1,),
                              child: Image.asset(
                                "assets/images/light dark mode.png",
                                scale: 20,
                                color: notifier.passwordIcon,
                              )),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppConstants.Height(20),
                              Text(
                                "Light/Dark Mode",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Manrope_bold",
                                  fontSize: 14,
                                  color: notifier.textColor,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                "Mode",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Manrope_bold",
                                  fontSize: 12,
                                  letterSpacing: 0.2,
                                  color: Color(0xff64748B),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Switch(
                            value: notifier.isDark,
                            onChanged: (bool value) {
                              notifier.isavalable(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppConstants.Height(20),
                  Text(
                    "Others",
                    style: TextStyle(
                        fontFamily: "Manrope-Bold",
                        color: notifier.textColor,
                        fontSize: 16),
                  ),
                  AppConstants.Height(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Help_Center(),
                          ));
                    },
                    child: accountDetails(
                      image: "assets/images/question-circle-outlined.png",
                      name: "Help Center",
                      desc: "Get supports",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Help_Center(),
                            ));
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Terms(),
                          ));
                    },
                    child: accountDetails(
                      image: "assets/images/Terms&condition.png",
                      name: "Terms & Conditions",
                      desc: "Our terms & conditions",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Terms(),
                            ));
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Policy(),
                          ));
                    },
                    child: accountDetails(
                      image: "assets/images/Lock.png",
                      name: "Privacy Policy",
                      desc: "Our privacy policy",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Policy(),
                            ));
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Reffle_code(),
                          ));
                    },
                    child: accountDetails(
                      image: "assets/images/card.png",
                      name: "Refferal Code",
                      desc: "Refferal Program",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Reffle_code(),
                            ));
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const About_App(),
                          ));
                    },
                    child: accountDetails2(
                      image: "assets/images/Crowwn.png",
                      name: "About App",
                      desc: "About Us",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const About_App(),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget accountDetails(
      {required String image,
      required String name,
      required String desc,
      required void Function()? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: notifier.getContainerBorder)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: notifier.tabBar1),
                  child: Image.asset(
                    image,
                    scale: 3,
                    color: notifier.passwordIcon,
                  )),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstants.Height(20),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope_bold",
                      fontSize: 14,
                      color: notifier.textColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      letterSpacing: 0.2,
                      color: Color(0xff64748B),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onPress,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: notifier.tabBarText2,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget accountDetails_(
      {required String image,
      required String name,
      required String desc,
      required void Function()? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: notifier.getContainerBorder)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: notifier.tabBar1),
                  child: Image.asset(
                    image,
                    scale: 3,
                    color: notifier.passwordIcon,
                  )),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstants.Height(20),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope_bold",
                      fontSize: 14,
                      color: notifier.textColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      letterSpacing: 0.2,
                      color: Color(0xff64748B),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onPress,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: notifier.tabBarText2,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget accountDetails1(
      {required String image,
      required String name,
      required String desc,
      required void Function()? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: notifier.getContainerBorder)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: notifier.tabBar1),
                  child: Image.asset(
                    image,
                    scale: 3,
                    color: notifier.passwordIcon,
                  )),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstants.Height(20),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope_bold",
                      fontSize: 14,
                      color: notifier.textColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      letterSpacing: 0.2,
                      color: Color(0xff64748B),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset("assets/images/united-states.png"),
              ),
              IconButton(
                onPressed: onPress,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: notifier.tabBarText2,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget accountDetails2(
      {required String image,
      required String name,
      required String desc,
      required void Function()? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: notifier.getContainerBorder)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: notifier.tabBar1),
                  child: Image.asset(
                    image,
                    scale: 70,
                  )),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstants.Height(20),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope_bold",
                      fontSize: 14,
                      color: notifier.textColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      letterSpacing: 0.2,
                      color: Color(0xff64748B),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onPress,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: notifier.tabBarText2,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget accountDetails3(
      {required String image,
      required String name,
      required String desc,
      required void Function()? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: notifier.getContainerBorder)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: notifier.tabBar1),
                  child: Image.asset(
                    image,
                    scale: 20,
                    color: notifier.passwordIcon,
                  )),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppConstants.Height(20),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope_bold",
                      fontSize: 14,
                      color: notifier.textColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      letterSpacing: 0.2,
                      color: Color(0xff64748B),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onPress,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: notifier.tabBarText2,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
