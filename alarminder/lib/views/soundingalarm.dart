import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';
import 'package:alarminder/colors.dart';

class Soundingalarm extends StatelessWidget {
  const Soundingalarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "03:20",
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 130,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "PM",
                      style: GoogleFonts.montserrat().copyWith(
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Tomar Pastilla",
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 30,
                  color: Colors.blue2_50,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 340,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.blue2_50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 100),
                      child: Container(
                        width: 140,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue1,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Posponer",
                            style: GoogleFonts.montserrat().copyWith(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 50,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Detener",
                            style: GoogleFonts.montserrat().copyWith(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
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
