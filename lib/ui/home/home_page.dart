import 'package:edspert/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildUserSection(),
              _buildBanner(context),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Pilih Pelajaran",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Spacer(),
                        TextButton(
                            child: const Text("Lihat Semua"), onPressed: () {})
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0),
                    padding: const EdgeInsets.fromLTRB(18, 21, 9, 21),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F7F8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(13),
                        child: SvgPicture.asset(
                          Assets.images.svg.icMath,
                          width: 28,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Matematika",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("0/50 Paket latihan soal",
                                  style: TextStyle(color: Colors.grey)),
                              const SizedBox(height: 11.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF0F0F0)),
                                height: 5,
                                width: double.infinity,
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0),
                    padding: const EdgeInsets.fromLTRB(18, 21, 9, 21),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F7F8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(13),
                        child: Image.asset(
                          Assets.images.png.icAtom.path,
                          width: 26,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Fisika",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("0/50 Paket latihan soal",
                                  style: TextStyle(color: Colors.grey)),
                              const SizedBox(height: 11.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffF0F0F0)),
                                height: 5,
                                width: double.infinity,
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0),
                    padding: const EdgeInsets.fromLTRB(18, 21, 9, 21),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F7F8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(13),
                        child: Image.asset(
                          Assets.images.png.icKimia.path,
                          width: 26,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Kimia",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("0/50 Paket latihan soal",
                                  style: TextStyle(color: Colors.grey)),
                              const SizedBox(height: 11.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF0F0F0)),
                                height: 5,
                                width: double.infinity,
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildUserSection() {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Hai, Altop",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                const Text("Selamat Datang")
              ],
            ),
          ),
          Image.asset(
            Assets.images.png.icAvatar.path,
            width: 35,
          )
        ],
      ),
    );
  }

  Container _buildBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 147.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff3A7FD5),
      ),
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 35, 12, 12),
              child: const Text(
                "Mau kerjain\nlatihan soal\napa hari ini?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 17),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Image.asset(Assets.images.png.imgHome.path)),
          )
        ],
      ),
    );
  }
}
