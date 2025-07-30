import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.yellowAccent,
              splashBorderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
              //isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: "Car"),
                Tab(icon: Icon(Icons.directions_transit), text: "Train"),
                Tab(icon: Icon(Icons.directions_bike), text: "bike"),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit))
              ],
            ),
            title: const Text('My Resume'),
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wood.jpg'), // Background image
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
            child: TabBarView(
              children: [tab1(), tab2(), tab3(), tab4(), tab5()],
            ),
          ),
        ),
      ),
    );
  }

  Widget tab1() {
    return Center(
      child: Container(
        // กรอบทั้งหมด
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                // กรอบรูปทรงวงกลม
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 4),
              ),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/pao.jpg'),
              ),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างรูปกับข้อความ
            Text(
              '⭐นฤบดินทร์   แอตาล⭐ \n⭐Naruebodin Aetal⭐\nเพศ: ชาย อายุ 21 ปี \nวันเกิด: 17 สิงหาคม 2547',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
              //textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget tab2() {
    return Center(
      child: Container(
        // กรอบทั้งหมด
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              'การติดต่อ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ที่อยู่: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Text(
                    '28 หมู่ 4 ต.หนองโพ อ.โพธาราม จ.ราชบุรี 70120',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เบอร์ติดต่อ: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Text(
                    '065-237-1302',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Line: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Text(
                    'paokungyt',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Facebook: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Pao ISeeYouz',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tab3() {
    return Center(
      child: Container(
        // กรอบทั้งหมด
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
      ),
    );
  }

  Widget tab4() {
    return Center(
      child: Container(
        // กรอบทั้งหมด
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
      ),
    );
  }

  Widget tab5() {
    return Center(
      child: Container(
        // กรอบทั้งหมด
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              'งานอดิเรก',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,// ทำให้ GridView มีขนาดเล็กลง
              padding: EdgeInsets.only(bottom: 8),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/book.jpg', fit: BoxFit.cover,),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(child: const Text('อ่านหนังสือ/\nอ่านการ์ตูน')),
                ),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(child: const Text('เล่นเกม')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/game.jpg', fit: BoxFit.cover),
                  ),
                ),
                

              ],
            ),
          ],
        ),
      ),
    );
  }
}
