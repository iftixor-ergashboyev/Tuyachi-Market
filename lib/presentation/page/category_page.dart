import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/category_items.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2.5,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              // onTap: () => _navigateToPage(context, items[index]['page']!),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Opacity(
                          opacity: 0.5,
                          child: Container(
                            child: Image.asset(
                              items[index]['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          items[index]['text']!,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'MyFont',
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // void _navigateToPage(BuildContext context, String page) {
  //   Navigator.push(
  //     context,
  //     CupertinoPageRoute(
  //       builder: (context) {
  //         switch (page) {
  //           case 'Page1':
  //             return Joy();
  //           case 'Page2':
  //             return Anger();
  //           case 'Page3':
  //             return Disgust();
  //           case 'Page4':
  //             return Fear();
  //           case 'Page5':
  //             return Sadness();
  //           case 'Page6':
  //             return Ennui();
  //           case 'Page7':
  //             return Envy();
  //           case 'Page8':
  //             return Anxiety();
  //           default:
  //             return CategoryPage();
  //         }
  //       },
  //     ),
  //   );
  // }
}