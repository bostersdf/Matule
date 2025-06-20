import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Matule/layers/presentation/screens/settings-screensTHREE/language_screen.dart';
import 'package:Matule/layers/presentation/screens/settings-screensTHREE/version.dart';

class THREESettingsClass extends StatefulWidget {
  const THREESettingsClass({super.key});

  @override
  State<THREESettingsClass> createState() => THREESettingsClassState();
}

class THREESettingsClassState extends State<THREESettingsClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => context.go('/start'),
                  icon: Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                context.tr('settings'),
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => THREELanguageClass()),
                      ),
                  child: Container(
                    height: 60,
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.g_translate),
                        SizedBox(width: 20),
                        Text(
                          context.tr('language'),
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => THREEVersionClass()),
                      ),
                  child: Container(
                    height: 60,
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.add_to_home_screen_outlined),
                        SizedBox(width: 20),
                        Text(
                          context.tr('version'),
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
