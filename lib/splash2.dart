import 'package:flutter/material.dart';
import 'splash3.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Splash2 extends StatelessWidget {
  const Splash2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E293D),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 800,
                decoration: const BoxDecoration(
                  color: Color(0xFF0E293D),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 30,
                      child: Container(
                        width: 350,
                        height: 350,
                        child: Lottie.asset(
                          'lib/src_img/sp2.json', // Replace with your Lottie animation path
                          repeat: true,
                          fit: BoxFit.contain, // Changed to BoxFit.contain
                        ),
                      ),
                    ),
                    Positioned(
                      left: 4,
                      top: 424,
                      child: Container(
                        height: 250, // Adjusted height to fit text properly
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Customizable \nTemplates',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Choose from a variety of customizable templates.\nMake your portfolio unique and stylish.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 148,
                      top: 659,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF2E7A97),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF2E7A97),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => const Splash3(),
                                  transitionsBuilder: (_, animation, __, child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1.0, 0.0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration: const Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF2E7A97),
                                shape: OvalBorder(),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'lib/icon_assets/arrow.svg', // Replace with the path to your SVG file
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
