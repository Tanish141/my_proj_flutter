import 'package:flutter/material.dart';
import 'splash1.dart';
import 'package:lottie/lottie.dart';

class Splash3 extends StatelessWidget {
  const Splash3({Key? key});

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
                          'lib/src_img/sp3.json', // Replace with your Lottie animation path
                          repeat: true,
                          fit: BoxFit.contain, // Changed to BoxFit.contain
                        ),
                      ),
                    ),
                    Positioned(
                      left: 4,
                      top: 424,
                      child: Container(
                        height: 250,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Publish &\nShare',
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
                              'Explore our wide array of customizable \ntemplates to craft a portfolio that perfectly \naligns with your unique style and personality.',
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
                      left: 65,
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
                                  color: Color(0xFF2E7A97),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 13,
                                height: 13,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
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
                                  pageBuilder: (_, __, ___) => const Splash1(),
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
                              width: 223,
                              height: 40,
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF2E7A97),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Expanded(
                                    child: SizedBox(
                                      child: Text(
                                        'Get started',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
