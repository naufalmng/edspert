import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:edspert/gen/assets.gen.dart';
import 'package:edspert/ui/base_ui.dart';
import 'package:flutter/material.dart';

enum Gender { lakiLaki, perempuan }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var listItems = ['10', '11', '12', 'Gap Year', 'Umum'];
    String? kelas = "10";
    String? gender = "";

    setGender(Gender type) {
      if (type == Gender.lakiLaki) {
        gender = "Laki-Laki";
      } else {
        gender = "Perempuan";
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: Text(
          "Yuk isi data diri",
          style: baseTextStyle(FontWeight.bold, Colors.black, 20),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 28.0, top: 24.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email",
              style: baseTextStyle(FontWeight.bold, Colors.black, 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: containerDecoration,
              child: TextField(
                decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: baseTextStyle(
                        FontWeight.normal, const Color(0xffAAAAAA), 16)),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text("Nama Lengkap",
              style: baseTextStyle(FontWeight.bold, Colors.black, 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: containerDecoration,
              child: TextField(
                decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'Nama Lengkap',
                    hintStyle: baseTextStyle(
                        FontWeight.normal, const Color(0xffAAAAAA), 16)),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text("Jenis Kelamin",
              style: baseTextStyle(FontWeight.bold, Colors.black, 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          setGender(Gender.lakiLaki);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: gender == "Laki-Laki"
                                  ? const Color(0xff3A7FD5)
                                  : Colors.white,
                              border: Border.all(
                                  color: gender == "Laki-Laki"
                                      ? const Color(0xff3A7FD5)
                                      : const Color(0XFFD6D6D6)),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                            child: Text(
                              "Laki-Laki",
                              style: baseTextStyle(
                                  FontWeight.w600,
                                  gender == "Laki-Laki"
                                      ? Colors.white
                                      : Colors.black,
                                  14),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(width: 9.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            setGender(Gender.perempuan);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: gender == "Perempuan"
                                    ? const Color(0xff3A7FD5)
                                    : Colors.white,
                                border: Border.all(
                                    color: gender == "Perempuan"
                                        ? const Color(0xff3A7FD5)
                                        : const Color(0XFFD6D6D6)),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                              child: Text(
                                "Perempuan",
                                style: baseTextStyle(
                                    FontWeight.w600,
                                    gender == "Perempuan"
                                        ? Colors.white
                                        : Colors.black,
                                    14),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text("Kelas",
              style: baseTextStyle(FontWeight.bold, Colors.black, 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color(0xffD3D3D3),
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0))),
                child: DropdownButtonFormField2<String>(
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                  decoration: const InputDecoration(
                      enabledBorder: InputBorder.none, fillColor: Colors.white),
                  isExpanded: true,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text("Pilih Kelas",
                        style: baseTextStyle(
                            FontWeight.w500, const Color(0XFFAAAAAA), 16)),
                  ),
                  items: listItems
                      .map((e) => DropdownMenuItem(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                e,
                                style: baseTextStyle(
                                    FontWeight.w500, Colors.black, 16),
                              ),
                            ),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (String? val) {
                    kelas = val;
                    setState(() {
                      kelas = kelas!;
                    });
                    // validation();
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text("Nama Sekolah",
              style: baseTextStyle(FontWeight.bold, Colors.black, 16)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: containerDecoration,
              child: TextField(
                decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'Nama Sekolah',
                    hintStyle: baseTextStyle(
                        FontWeight.normal, const Color(0xffAAAAAA), 16)),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: const Color(0xff3A7FD5),
                  fixedSize: const Size(double.maxFinite, 64.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(46),
                      side: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1))),
              child: Text(
                "DAFTAR",
                style: baseTextStyle(FontWeight.bold, Colors.white, 14),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 36.0,
          )
        ]),
      )),
    );
  }
}
