import 'package:alarminder/colors.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
      body: Column(
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
                    'Crear Grupo',
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
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Bienvenid@, aquí puedes crear un grupo para organizar tus alarmas!',
              style: GoogleFonts.montserrat().copyWith(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 24,
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
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Color',
              style: GoogleFonts.montserrat().copyWith(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DecoratedBox(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.brightYellow),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.brightGreen),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.brightBlue),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.purple),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.brightPurple),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
