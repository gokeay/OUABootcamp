import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;


  List<String> secondImages = [
    'assets/Steve Jobs1.png',
    'assets/Jane Austen1.png',
    'assets/Karl Marx1.png',
    'assets/Leonardo da Vinci1.png',
    'assets/Ludwig van Beethoven1.png',
    'assets/Mahatma Gandhi1.png',
    'assets/Marie Antoinette1.png',
    'assets/Mark Twain1.png',
    'assets/Michael Faraday1.png',
    'assets/Nostradamus1.png',
    'assets/Oscar Wilde1.png',
    'assets/Ömer Hayyam1.png',
    'assets/Pancho Villa1.png',
    'assets/Salvador Allende1.png',
    'assets/Sigmund Freud1.png',
    'assets/Sir Isaac Newton1.png',
    'assets/Thomas Edison1.png',
    'assets/Voltaire1.png',
    'assets/Winston Churchill1.png',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    var firstImage = Padding(
      padding: EdgeInsets.all(20.0),
      child: Image.asset('assets/firstimage.png'),
    );


    var secondImage = Padding(
      padding: EdgeInsets.all(20.0),
      child: Image.asset(secondImages[_currentIndex]),
    );

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/arkaplan.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 24),
            firstImage,
            SizedBox(height: 1.5),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.33,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: [
                'assets/Steve Jobs.png',
                'assets/Jane Austen.png',
                'assets/Karl Marx.png',
                'assets/Leonardo da Vinci.png',
                'assets/Ludwig van Beethoven.png',
                'assets/Mahatma Gandhi.png',
                'assets/Marie Antoinette.png',
                'assets/Mark Twain.png',
                'assets/Michael Faraday.png',
                'assets/Nostradamus.png',
                'assets/Oscar Wilde.png',
                'assets/Ömer Hayyam.png',
                'assets/Pancho Villa.png',
                'assets/Salvador Allende.png',
                'assets/Sigmund Freud.png',
                'assets/Sir Isaac Newton.png',
                'assets/Thomas Edison.png',
                'assets/Voltaire.png',
                'assets/Winston Churchill.png',
              ].map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset(imagePath),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 7.6),
            secondImage,
          ],
        ),
      ),
    );
  }
}