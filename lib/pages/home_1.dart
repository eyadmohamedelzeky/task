import 'package:flutter/material.dart';

class Home_one extends StatefulWidget {
  const Home_one({Key? key}) : super(key: key);

  @override
  State<Home_one> createState() => _Home_oneState();
}

class _Home_oneState extends State<Home_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xffE1E5F6),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.warehouse_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: ''),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff648BE5)),
                  child: Column(
                    children: [
                      Text(
                        'Find Farms , Sports & Entertainment Destinations',
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color(0xffFBCD61),
                            Color(0xffF1B936),
                          ]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              'Where you Plan to go ?',
                              style: TextStyle(color: Color(0xffFFFFFF)),
                            ),
                            Icon(
                              Icons.search,
                              color: Color(0xffFFFFFF),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Destinations',
                style: TextStyle(color: Color(0xff6289E0)),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 120,
                          width: 140,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/1.jpg',
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text('Abu Dhabi'),
                      ],
                    ), //image 1
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Popular Farms',
                style: TextStyle(color: Color(0xff6289E0)),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: Colors.black,
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        width: 186,
                        height: 145,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: 140,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: GestureDetector(
                                    onTap: () => showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.85,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_back_ios)),
                                                    SizedBox(
                                                      width: 60,
                                                    ),
                                                    Center(
                                                      child: Text(
                                                        'Select The Main Category',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff6289E0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Image.asset(
                                                    'assets/images/4.jpg',
                                                    fit: BoxFit.fill,
                                                    width: 170,
                                                    height: 140,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Farms",
                                                  style: TextStyle(
                                                      color: Color(0xff6289E0)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Image.asset(
                                                    'assets/images/5.jpg',
                                                    fit: BoxFit.fill,
                                                    width: 170,
                                                    height: 140,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Sports",
                                                  style: TextStyle(
                                                      color: Color(0xff6289E0)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Image.asset(
                                                    'assets/images/6.jpg',
                                                    fit: BoxFit.fill,
                                                    width: 170,
                                                    height: 140,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Entertainment",
                                                  style: TextStyle(
                                                      color: Color(0xff6289E0)),
                                                ),
                                                Spacer(),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 20),
                                                  width: 300,
                                                  height: 60,
                                                  child: RawMaterialButton(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      fillColor:
                                                          Color(0xff6289E0),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Search",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )),
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                    child: Image.asset(
                                      'assets/images/3.jpg',
                                      fit: BoxFit.fill,
                                      width: double.infinity,
                                    ),
                                  )),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Sharjah Farm",
                                        style:
                                            TextStyle(color: Color(0xff153D97)),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xffBF6919),
                                      ),
                                      Text(
                                        "Sharjah",
                                        style:
                                            TextStyle(color: Color(0xffBF6919)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        // width:20,
                                        //height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.zero,
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10)),
                                          color: Color(0xff153D97),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('8.1'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Located in the integrated',
                                                overflow:
                                                    TextOverflow.ellipsis),
                                            Text(
                                              '1.493 Accommodation',
                                              style: TextStyle(
                                                  color: Color(0xff648BE5),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Hot Packages',
                style: TextStyle(color: Color(0xff6289E0)),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/2.jpg',
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
