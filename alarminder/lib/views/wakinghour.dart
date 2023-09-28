import 'package:alarminder/colors.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';

class Wakinghour extends StatefulWidget {
  const Wakinghour({Key? key}) : super(key: key);

  @override
  State<Wakinghour> createState() => _WakinghourState();
}

class _WakinghourState extends State<Wakinghour> {
  bool sound = true;
  bool vibrate = true;
  bool hour = true;
  String selectedDay = 'Lunes';
  String selectedTone = 'Birds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
                width: 50,
                height: 40,
                child: Image.asset('assets/images/profile_default.png')),
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
                      'Hora de despertarse',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 20),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Listo',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Misma hora todos los dias',
                    style: GoogleFonts.montserrat().copyWith(fontSize: 16),
                  ),
                  Switch(
                    value: hour,
                    onChanged: (_) {
                      setState(() {
                        hour = !hour;
                      });
                    },
                    trackOutlineColor:
                        const MaterialStatePropertyAll(Colors.green1),
                    trackColor: const MaterialStatePropertyAll(Colors.green1),
                    thumbColor: const MaterialStatePropertyAll(Colors.white),
                  ),
                ],
              ),
            ),
            if (hour) ...[
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Cada selección le permitirá configurar la hora de cada día',
                  style: GoogleFonts.montserrat().copyWith(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Día de la semana',
                  style: GoogleFonts.montserrat().copyWith(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: DropdownButton<String>(
                  value: selectedDay,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDay = newValue!;
                    });
                  },
                  items: <String>[
                    'Lunes',
                    'Martes',
                    'Miércoles',
                    'Jueves',
                    'Viernes',
                    'Sábado',
                    'Domingo',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
            if (!hour) ...[
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'La hora será la misma para todos los dias',
                  style: GoogleFonts.montserrat().copyWith(fontSize: 18),
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    '5',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 60, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    '59',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 60, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    '6',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                      shadows: [
                        const Shadow(blurRadius: 2),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Text(
                    ':',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                      shadows: [
                        const Shadow(blurRadius: 2),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Text(
                    '00',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                      shadows: [
                        const Shadow(blurRadius: 2),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'PM',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 60,
                      color: Colors.blue1,
                      shadows: [
                        const Shadow(blurRadius: 2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    '7',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 60, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    '01',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 60, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    'PM',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 60, color: Colors.grey),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showToneDialogue(context);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Alarm Sound',
                          style: GoogleFonts.montserrat()
                              .copyWith(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          'Homecoming',
                          style: GoogleFonts.montserrat().copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          value: sound,
                          onChanged: (_) {
                            setState(() {
                              sound = !sound;
                            });
                          },
                          trackOutlineColor:
                              const MaterialStatePropertyAll(Colors.green1),
                          trackColor:
                              const MaterialStatePropertyAll(Colors.green1),
                          thumbColor:
                              const MaterialStatePropertyAll(Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
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
                  Column(
                    children: [
                      Text(
                        'Vibration',
                        style: GoogleFonts.montserrat()
                            .copyWith(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        'Basic call',
                        style: GoogleFonts.montserrat().copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
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
              padding: const EdgeInsets.only(left: 24, top: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 48),
                    child: Text(
                      'Mensaje de alarma ',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat().copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Buenos dias estrellita!',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showToneDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.green2,
          title: const Text('Seleccione un tono'),
          content: Container(
            color: Colors.white,
            height: 48,
            width: 50,
            child: DropdownButton<String>(
              dropdownColor: Colors.white,
              icon: null,
              iconSize: 0,
              value: selectedTone,
              items: [
                DropdownMenuItem<String>(
                  value: 'Bells',
                  child: Text(
                    'Bells',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'Birds',
                  child: Text(
                    'Birds',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'Trin Trin',
                  child: Text(
                    'Trin Trin',
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedTone = value!;
                });
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
