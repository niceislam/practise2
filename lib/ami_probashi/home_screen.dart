import 'package:flutter/material.dart';

import '../calculator/widget.dart';

class AmiprobashiApp extends StatefulWidget {
  const AmiprobashiApp({super.key});

  @override
  State<AmiprobashiApp> createState() => _AmiprobashiAppState();
}

class _AmiprobashiAppState extends State<AmiprobashiApp> {
  int items = 12;
  int curentIndex =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: IconThemeData(size: 29, color: Color(0xFF189F77)),
        title: Image(
          height: 80,
          width: 90,
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxrqkghROfUty3T6z3JZWzZbpfcqBCYFEqsA&s",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.mail_outline),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowServicewidget(title: "Your journey abroad"),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    SlideItemWidget(
                      title: "BME reglectation",
                      icon: Icons.edit_document,
                      subtitle:
                          "i am a student of Dinajpur Polytechnic Institute , i am studiet at 4th semester",
                    ),
                    SlideItemWidget(
                      title: "BME reglectation",
                      icon: Icons.edit_document,
                      subtitle:
                          "i am a student of Dinajpur Polytechnic Institute , i am studiet at 4th semester",
                    ),
                    SlideItemWidget(
                      title: "BME reglectation",
                      icon: Icons.edit_document,
                      subtitle:
                          "i am a student of Dinajpur Polytechnic Institute , i am studiet at 4th semester",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 7, color: Colors.grey.withOpacity(0.4)),
              SizedBox(height: 15),
              RowServicewidget(
                title: "Service near me",
                viewall: "View all(${items})",
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    ServiceItemWidget(
                      icon: Icons.event_note,
                      title: "Downloads cards and Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.event_note,
                      title: "Downloads cards and Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.event_note,
                      title: "Downloads cards and Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.event_note,
                      title: "Downloads cards and Certificate",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 7, color: Colors.grey.withOpacity(0.4)),
              SizedBox(height: 15),
              RowServicewidget(title: "Help center", viewall: "View all${items}"),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    ServiceItemWidget(
                      icon: Icons.gif_box,
                      title: "Take a Special Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.gif_box,
                      title: "Take a Special Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.gif_box,
                      title: "Take a Special Certificate",
                    ),
                    ServiceItemWidget(
                      icon: Icons.gif_box,
                      title: "Take a Special Certificate",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.indigo,
        selectedFontSize: 20,
        selectedItemColor: Colors.black,
        iconSize: 32,
        unselectedFontSize: 16,
        currentIndex: curentIndex,
        onTap: (value){
        value == curentIndex;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), label: "Library"),
        ],
      ),
    );
  }
}
