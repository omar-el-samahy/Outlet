import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

import './shops.dart';

void main() {
  runApp(const Outlet());
}

class Outlet extends StatefulWidget {
  const Outlet({super.key});

  @override
  State<Outlet> createState() => _OutletState();
}

class _OutletState extends State<Outlet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", "US"),
        Locale("ar", "AE"),
      ],
      title: 'Outlet',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.red,
        primaryColor: Colors.red[200],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({super.key});
  static List<String> sampleImages = [
    'assets/images/Sample (1).jpg',
    'assets/images/Sample (2).jpg',
    'assets/images/Sample (3).jpg'
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  int get initialPage => 1;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      tooltip: 'القائمة الإضافية',
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      icon: const Icon(Icons.sort_rounded),
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'الرئيسية',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topRight,
                    tooltip: 'المفضلة',
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    icon: const Icon(Icons.favorite_border_rounded),
                    onPressed: () {},
                  ),
                  IconButton(
                    alignment: Alignment.topRight,
                    tooltip: 'تسجيل الدخول',
                    padding: const EdgeInsets.fromLTRB(0, 20, 5, 20),
                    icon: const Icon(Icons.person),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150.0),
                        ),
                        labelText: 'ابحث عن منتج، محل، أو سعر',
                        suffixIcon: const Icon(Icons.search_rounded),
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.tune),
                    tooltip: 'الفلترات',
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 190,
                width: 400,
                child: FanCarouselImageSlider(
                  imagesLink: MyHomePage.sampleImages,
                  isAssets: true,
                  autoPlay: true,
                  expandedImageFitMode: BoxFit.fill,
                  expandedCloseBtn: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.grey.shade500,
                    size: 30,
                  ),
                  indicatorActiveColor: Colors.red,
                  autoPlayInterval: const Duration(milliseconds: 3000),
                  sliderHeight:
                      170, //MUST Be Less Than The Sized Box height By 20.0 p
                  sliderWidth: 400,
                ),
              ),
              Row(
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'إظهار الكل',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0,
                          color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'تحب تشتري منين؟',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ///////////////////////Areas//////////////////////////////////
              //To Make It Scrollable Horizontaly
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'قناة السويس',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //1
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'الترعة',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //2
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'آداب',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //3
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'توريل',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //4
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'الترعة',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //5
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'الجمهورية',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //6
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.grey.shade400),
                        onPressed: () {},
                        child: const Text(
                          'حي الجامعة',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ), //7
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Directionality(
                textDirection: TextDirection.rtl, // Text Direction
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'أشهر المحلات >',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              GridView.count(
                padding: const EdgeInsets.all(4.0),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    icon: Ink.image(
                      image: const AssetImage('assets/images/Sample (1).jpg'),
                      height: double.infinity,
                    ),
                    label: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Sample (1).jpg',
                          ),
                        ),
                        const Text(
                          'براندات',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'محل حريمي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade300),
                      ),
                      icon: Icon(
                        Icons.swap_horizontal_circle_outlined,
                        color: Colors.red.shade900,
                      ),
                      label: Text(
                        'تغيير المحلات',
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'خصومات التوفير',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GridView.count(
                padding: const EdgeInsets.all(4.0),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                childAspectRatio: (16 / 6),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.red,
                    child: Image.asset(
                      'assets/images/Sample (1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.red,
                    child: Image.asset(
                      'assets/images/Sample (1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.red,
                    child: Image.asset(
                      'assets/images/Sample (1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.red,
                    child: Image.asset(
                      'assets/images/Sample (1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //////////////////////////////////////////////////////////////////////////////////////
      ),
    );
  }
}
