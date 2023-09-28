import 'package:alarminder/colors.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';

class CreateAlarm extends StatefulWidget {
  const CreateAlarm({super.key});

  @override
  State<CreateAlarm> createState() => _CreateAlarmState();
}

class _CreateAlarmState extends State<CreateAlarm> {
  bool repeat = true;
  bool vibrate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset('assets/images/profile_default.png'),
          ),
        ],
        title: Text(
          'AlarmMinder',
          style: GoogleFonts.montserrat().copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                    ),
                    Text(
                      'Crear Alarma',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 20),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Guardar',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '8',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                    ),
                  ),
                  Text(
                    ':',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                    ),
                  ),
                  Text(
                    '00',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                    ),
                  ),
                  Text(
                    'AM',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 36,
                      color: Colors.blue1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue2)),
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Center(
                        child: Text(
                          'L',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'M',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'M',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'J',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'V',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'S',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        'D',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Repetir',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Switch(
                        value: repeat,
                        onChanged: (_) {
                          setState(() {
                            repeat = !repeat;
                          });
                        },
                        trackOutlineColor:
                            const MaterialStatePropertyAll(Colors.green1),
                        trackColor:
                            const MaterialStatePropertyAll(Colors.green1),
                        thumbColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      repeat
                          ? const Icon(Icons.arrow_forward_ios)
                          : const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 16,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Posponer cada',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    'minutos',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 16,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tono',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(
                        'Predeterminado',
                        style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 16,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Vibrar',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Switch(
                        value: vibrate,
                        onChanged: (_) {
                          setState(() {
                            vibrate = !vibrate;
                          });
                        },
                        trackOutlineColor:
                            const MaterialStatePropertyAll(Colors.green1),
                        trackColor:
                            const MaterialStatePropertyAll(Colors.green1),
                        thumbColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Nombre',
                style: GoogleFonts.montserrat().copyWith(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
