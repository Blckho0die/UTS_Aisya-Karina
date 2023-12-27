import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  List catNames = [
  "SIP LK",
  "BERKAS",
  "SI HRD",
  "APPLE",
  "SARPRAS",
  "SURAT",
  "PAPERLESS",
];

List<Color> cateColors = [
  const Color(0xffffcf2f),
  const Color(0xff6fe08d),
  const Color(0xff61cf2f),
  const Color(0xff618dfd),
  const Color(0xffff8dfd),
  const Color(0xffffe08fd),
  const Color(0xff78e667),
];

List<Icon> cateIcons = [
  Icon(Icons.rotate_90_degrees_cw_outlined, color: Colors.white, size: 30),
  Icon(Icons.folder,color: Colors.white, size: 30),
  Icon(Icons.settings, color: Colors.white, size: 30),
  Icon(Icons.apple_rounded,color: Colors.white, size: 30),
  Icon(Icons.apartment, color: Colors.white, size: 30),
  Icon(Icons.folder_copy, color: Colors.white, size: 30),
  Icon(Icons.book, color: Colors.white, size: 30),
];

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.32,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 155, 155, 27),
                    borderRadius: 
                      BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(40))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage('asset/logoumkt.png'
                            ),
                            height: 55,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome!",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text( 
                            "Hi, There Welcome to UMKT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white54,
                              letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: Icon(Icons.search, size: 25),
                          ),
                        ),
                      ),
                    ],
                    ),
                ),
              ],
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.431,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 155, 155, 27),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.43,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: catNames.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: cateColors[index],
                                shape: BoxShape.circle,
                              ),
                            child: Center(
                              child: cateIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        );
                      }
                    ),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}