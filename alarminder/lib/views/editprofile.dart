import 'package:flutter/material.dart' hide Colors;
import 'package:google_fonts/google_fonts.dart';
import 'package:alarminder/colors.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  bool isEditing = false;

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
              child: Image.asset('assets/images/profile_default.png'),
            ),
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
                      'Modificar Perfil',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 20),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      isEditing = !isEditing;
                    });
                  },
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isEditing
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 35,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Lavender',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Text(
                        'Lavender',
                        style: GoogleFonts.montserrat().copyWith(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                !isEditing
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isEditing = !isEditing;
                          });
                        },
                        child: const Icon(Icons.edit,
                            color: Colors.black, size: 20))
                    : const SizedBox(),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage('assets/images/profile_default.png'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Nombre',
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 48),
              child: Text(
                'lavender.qz@gmail.com',
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Contraseña',
                style: GoogleFonts.montserrat().copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: isEditing
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '*******',
                              style: GoogleFonts.montserrat().copyWith(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Text(
                      '*******',
                      style: GoogleFonts.montserrat().copyWith(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
