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
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.account_box), text: "Profile"),
                Tab(icon: Icon(Icons.contact_mail), text: "Contact"),
                Tab(icon: Icon(Icons.build), text: "Skills"),
                Tab(icon: Icon(Icons.school), text: "Education"),
                Tab(icon: Icon(Icons.videogame_asset_rounded), text: "Hobbies"),
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
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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

            SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Text(
                    'pao0992174774@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'ความสามารถในด้านต่าง ๆ',
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              ),
            ),
            
            SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              Text(
                'ภาษาที่ใช้สื่อสาร: ',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
              Text(
                'ไทย– ระดับเจ้าของภาษา\nอังกฤษ– อ่าน/เขียน/สนทนา ระดับดี',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                ),
              ),
              SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
              Text(
                'ภาษาคอมพิวเตอร์: ',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 6, // ทำให้ช่องสูงน้อยลง เลขมากยิ่งแคบ
              mainAxisSpacing: 6, // ระยะห่างแนวตั้ง
              crossAxisSpacing: 10, // ระยะห่างแนวนอน
              children: [
                Text('•C++', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•Java', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•Python', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•JavaScript', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•HTML', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                //Text('•CSS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
              ],
            ),
            SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              Text(
                'ฐานข้อมูล: ',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
              Text(
                '-MySQL',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                ),
              ),
              SizedBox(height: 10), // ระยะห่างระหว่างหัวข้อกับเนื้อหา
              Text(
                'เครื่องมือที่ใช้: ',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              )
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 6, // ทำให้ช่องสูงน้อยลง เลขมากยิ่งแคบ
              mainAxisSpacing: 6, // ระยะห่างแนวตั้ง
              crossAxisSpacing: 10, // ระยะห่างแนวนอน
              children: [
                Text('•GitHub', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•Docker', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•Postman', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
                Text('•Visual Studio Code', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black)),
              ],
            ),
          ],
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
        child: Column(
          children: [
            Text(
              'ระดับการศึกษา',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: certificates.length,
                  itemBuilder: (context, index) {
                    final certificate = certificates[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: double.infinity,
                                  child: Image.asset(
                                    certificate.imagePath,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    certificate.description,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
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
            ),
          ],
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
                  child: Center(child: const Text('อ่านหนังสือ/\nอ่านการ์ตูน',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black),
                  )),
                ),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(child: const Text('เล่นเกม',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black),
                  )),
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

class certificate {
  final String description;
  final String imagePath;

  certificate({
    required this.description,
    required this.imagePath,
  });
}

final List<certificate> certificates = [
  certificate(
    description: 'ปัจจุบันกำลังศึกษาในระดับปริญญาตรี\nอยู่ที่มหาวิทยาลัยเกษตรศาสตร์\nวิทยาเขตกำแพงแสน',
    imagePath: 'images/ku_logo.png',
  ),
  certificate(
    description: 'เข้าอบรมหลักสูตร เปิดโลกทักษะAI และความปลอดภัยทางไซเบอร์',
    imagePath: 'images/139_page-0001.jpg',
  ),
  certificate(
    description: 'ประกาศนียบัตรการใช้ CSS',
    imagePath: 'images/css_certificate_page-0001.jpg',
  ),
  certificate(
    description: 'ประกาศนียบัตรการใช้ SQL',
    imagePath: 'images/sql_basic_certificate_page-0001.jpg',
  ),
];