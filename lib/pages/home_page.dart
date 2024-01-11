import 'package:fabric_engineering_app/db/category_data.dart';
import 'package:fabric_engineering_app/pages/developer_page.dart';
// import 'package:fabric_engineering_app/pages/developer_page.dart';
// import 'package:fabric_engineering_app/pages/settings.dart';
import 'package:fabric_engineering_app/widget/category.dart';
// import 'package:fabric_engineering_app/widget/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 249, 213),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 249, 213),
        centerTitle: true,
        title: Text(
          "Fabric Engineering",
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            color: const Color.fromARGB(255, 41, 51, 104),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeveloperPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.developer_board,
              size: 30,
              color: Color.fromARGB(255, 41, 51, 104),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 180,
                  width: width * .45,
                  decoration: const BoxDecoration(
                    //color: Color.fromARGB(255, 249, 227, 161),
                    color: Color(0xffEFE1D1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                      //bottomLeft: Radius.circular(200),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 180,
                  width: width * .35,
                  decoration: const BoxDecoration(
                    color: Color(0xffEFE1D1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    // color: Color.fromARGB(255, 249, 227, 161),
                    color: Color(0xffEFE1D1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                //right: MediaQuery.of(context).size.width * .50,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xffEFE1D1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: width * .60,
                    // color: Colors.red,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text(
                            '''Fabric Engineering is one of the basic textile engineering branches with its large application in weaving, knitting and non-woven.''',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(217, 44, 43, 45),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    //color: Colors.blue,
                    height: 220,
                    width: width * .40,
                    child: SvgPicture.asset('images/snow.svg'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffEFE1D1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: categoryData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: aspectRatio / .85,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Category(
                      title: categoryData[index].title,
                      subTitle: categoryData[index].subTitle,
                      imgData: categoryData[index].imgData,
                      nav: categoryData[index].nav,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

   /*   drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'F A B R I C\nE N G I N E E R I N G\nR E S O U R C E S',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            DrawerTile(
              icon: Icons.settings,
              title: 'Setting',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Settings(),
                  ),
                );
              },
            ),
            DrawerTile(
              icon: Icons.manage_accounts_sharp,
              title: 'Developer',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeveloperPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),  */