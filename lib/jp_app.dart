import 'package:flutter/material.dart';
import 'package:jp_app/theme/jp_app_theme.dart';

class JPApp extends StatelessWidget {
  const JPApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _flavors = ['All categories', 'Salty', 'Sweet', 'Drinks'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: jpAppTheme,
      home: Scaffold(
        //appBar: AppBar(backgroundColor: Colors.transparent),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Choose Your Favorite Snack',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                      //style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ),
                // DefaultTabController(
                //   length: 4,
                //   child: TabBar(
                //     tabs: [
                //       Tab(text: 'All categories'),
                //       Tab(text: 'Salty'),
                //       Tab(text: 'Sweet'),
                //       Tab(text: 'Drinks'),
                //     ],
                //   ),
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    clipBehavior: Clip.hardEdge,
                    children: _flavors
                        .map(
                          (name) => Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.white.withValues(alpha: 0.5),
                              //     spreadRadius: 0,
                              //     blurRadius: 2,
                              //     offset: Offset(0, 0),
                              //   ),
                              // ],
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(235, 245, 245, 0.6),
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(255, 255, 255, 0.5),
                                  Color.fromRGBO(255, 255, 255, 0.2),
                                ],
                              ),
                            ),
                            child: ElevatedButton(
                              clipBehavior: Clip.hardEdge,
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                side: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.5),
                                  width: 1,
                                ),
                              ),
                              child: Text(name),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/details/cut_card.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32.0),
                          child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            margin: EdgeInsets.all(18),
                            elevation: 7.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Angis Yummy Burger'),
                                Text(
                                  'Delish began burger that tastes like heaven',
                                ),
                                Text('\$ 13.99'),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.transparent,
                                    ),
                                    // shadowColor: WidgetStatePropertyAll(Colors.black),
                                    // elevation: WidgetStatePropertyAll(7),
                                    padding: WidgetStatePropertyAll(
                                      EdgeInsets.symmetric(horizontal: 24),
                                    ),
                                    // shape: WidgetStatePropertyAll(
                                    //   RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(12),
                                    //   ),
                                    // ),
                                    backgroundBuilder:
                                        (context, states, child) {
                                          return Ink(
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff908cf5),
                                                  Color(0xffbb8de1),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                stops: [0.0, 0.72],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                            child: child,
                                          );
                                        },
                                  ),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  child: Text(
                                    'Add to order',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'We Recommend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    clipBehavior: Clip.hardEdge,
                    children: _flavors
                        .map(
                          (name) => Theme(
                            // only way to achieve transparent backgrounds of the chips
                            data: Theme.of(context).copyWith(
                              canvasColor: Color.fromRGBO(76, 97, 128, 1),
                            ),
                            child: SizedBox(
                              height: 262,
                              width: 190,
                              child: Card(
                                //shape: RoundedRectangleBorder(),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/grafiken/cupkake_cat.png',
                                      ),
                                      Text(name),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
