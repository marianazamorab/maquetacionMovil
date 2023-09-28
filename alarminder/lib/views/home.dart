import 'package:alarminder/colors.dart';
import 'package:alarminder/views/createalarm.dart';
import 'package:alarminder/views/creategroup.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool showOptions = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: GestureDetector(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.blue2_50,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Hora de Despertarse',
                                style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '8:00 AM',
                                style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 36,
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/cloud.png'),
                          Theme(
                            data: ThemeData(useMaterial3: false),
                            child: const Switch(
                              value: true,
                              onChanged: null,
                              trackColor:
                                  MaterialStatePropertyAll(Colors.blue2),
                              thumbColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Grupos',
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Encuentra aqui tus agrupaciones de alarmas',
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GroupCard(
                    image: 'assets/images/calendar.png',
                    title: 'Recordatorios',
                    user: 'By User',
                    color: Colors.orange,
                  ),
                  GroupCard(
                    image: 'assets/images/pills.png',
                    title: 'Medicinas',
                    user: 'By User',
                    color: Colors.blue1_50,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const GroupCard(
                    image: 'assets/images/travel.png',
                    title: 'Viajes',
                    user: 'By Lavender',
                    color: Colors.brightGreen,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          height: 55,
          color: Colors.blue2,
        ),
        floatingActionButton: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            const SizedBox(
              height: 27,
            ),
            FloatingActionButton(
              onPressed: () => setState(() {
                showOptions = !showOptions;
              }),
              shape: const CircleBorder(
                side: BorderSide(color: Colors.blue1),
              ),
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                color: Colors.blue1,
              ),
            ),
            if (showOptions) ...[
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAlarm(),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.blue1),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  elevation: const MaterialStatePropertyAll(6),
                  shadowColor: const MaterialStatePropertyAll(Colors.black),
                  textStyle: MaterialStatePropertyAll(
                    GoogleFonts.montserrat().copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 80,
                  child: Center(
                    child: Text('Alarma'),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateGroup(),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.blue1),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  elevation: const MaterialStatePropertyAll(6),
                  shadowColor: const MaterialStatePropertyAll(Colors.black),
                  textStyle: MaterialStatePropertyAll(
                    GoogleFonts.montserrat().copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 80,
                  child: Center(
                    child: Text('Grupo'),
                  ),
                ),
              ),
            ]
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class GroupCard extends StatelessWidget {
  final String image;
  final String title;
  final String user;
  final Color color;

  const GroupCard({
    required this.image,
    required this.title,
    required this.user,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2 - 20,
        height: 240,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(image),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user,
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
