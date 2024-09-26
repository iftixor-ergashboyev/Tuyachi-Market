import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Gap(23),
              Image.asset("assets/emoji/support.png", height: 120,  width: 120),
              Gap(10),
              Text("Qo'llab quvvatlash hizmati", style: TextStyle(
                  fontWeight: FontWeight.bold, color: CupertinoColors.black, fontFamily: "MyFont", fontSize: 24
              )),
              Gap(8),
              Text("Svollaringiz va takliflaringiz bo'lsa biz\n bilan bog'lanish uchun:", textAlign: TextAlign.center, style: TextStyle(
                  color: CupertinoColors.black, fontFamily: "MyFont", fontSize: 18
              )),
              Gap(8),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white10
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Text("Telegram", style: TextStyle(
                          fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: CupertinoColors.black
                        )),
                        onTap: () {},
                        leading: Image.asset("assets/icon/telegram.png", height: 30, width: 30),
                        trailing: Icon(Icons.navigate_next, color: Colors.deepOrange),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, left: 12),
                        child: Divider(),
                      ),
                      ListTile(
                        title: Text("Email", style: TextStyle(
                            fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: CupertinoColors.black
                        )),
                        onTap: () {},
                        leading: Image.asset("assets/icon/gmail_icon.png", height: 30, width: 30),
                        trailing: Icon(Icons.navigate_next, color: Colors.deepOrange),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, left: 12),
                        child: Divider(),
                      ),
                      ListTile(
                        title: Text("Telefon", style: TextStyle(
                            fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: CupertinoColors.black
                        )),
                        onTap: () {},
                        leading: Icon(Icons.phone, color: CupertinoColors.activeGreen, size: 40),
                        trailing: Icon(Icons.navigate_next, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(12),
              Text("Hamkorlik, homiylik va reklama bo'yicha biz\n bilan bog'lanish uchun:", textAlign: TextAlign.center, style: TextStyle(
                  color: CupertinoColors.black, fontFamily: "MyFont", fontSize: 18
              )),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white10
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("Telegram", style: TextStyle(
                            fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: CupertinoColors.black
                        )),
                        onTap: () {},
                        leading: Image.asset("assets/icon/telegram.png", height: 30, width: 30),
                        trailing: Icon(Icons.navigate_next, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(12),
              Text("Ilova bo'yicha savollar bo'lsa biz\n bilan bog'lanish uchun:", textAlign: TextAlign.center, style: TextStyle(
                  color: CupertinoColors.black, fontFamily: "MyFont", fontSize: 18
              )),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white10
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("Telegram", style: TextStyle(
                            fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: CupertinoColors.black
                        )),
                        onTap: () {},
                        leading: Image.asset("assets/icon/telegram.png", height: 30, width: 30),
                        trailing: Icon(Icons.navigate_next, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
              Text("Powered by Iftixor Ergashboyev", style: GoogleFonts.sourceCodePro()),
            ],
          ),
        ),
      ),
    );
  }
}
