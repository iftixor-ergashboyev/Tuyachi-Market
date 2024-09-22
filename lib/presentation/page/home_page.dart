import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_shop/presentation/page/support_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    'https://i.guim.co.uk/img/media/d543b9f0fb5a827b3908c72d4091bc9e1d5e2841/0_303_8214_4928/master/8214.jpg?width=1200&quality=85&auto=format&fit=max&s=e082f028060b9b9a0d4e5af258a09541',
    'https://i.guim.co.uk/img/media/bb5e732bdd0ae3bafca2ca7182232a562a824dfa/0_331_6541_3924/master/6541.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=2d7e945e63c81df2a9e3fdbf154c7958',
    'https://www.companyshopgroup.co.uk/wp-content/uploads/2021/06/Untitled-design-5-copy.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Bugun nimalar harid qilamiz?", style: TextStyle(
                    fontSize: 22, fontFamily: "MyFont", fontWeight: FontWeight.bold, color: Colors.black
                )),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => SupportPage()));
                  },
                  icon: Icon(Icons.support_agent, color: Colors.deepOrange, size: 30),
                )
              ],
            ),
            Gap(6),
            CarouselSlider(
              options: CarouselOptions(
                height: 160,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enableInfiniteScroll: true,
              ),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
