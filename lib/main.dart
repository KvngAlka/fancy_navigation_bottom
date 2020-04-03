import 'package:flutter/material.dart';
void main()=>  runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 PageController pageController;
 var currentPageNumber = 0;


 @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children:<Widget>[
            PageView(
              controller: pageController,
              children: <Widget>[
                Scaffold( body: Center(child: Text("Page One"),),),
                Scaffold( body: Center(child: Text("Page Two"),),),
                Scaffold( body: Center(child: Text("Page Three"),),),
                Scaffold( body: Center(child: Text("Page Four"),),),
              ],
            ),

            
            Positioned(
              bottom: 10.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
                child: Container(
                  height: 50.0,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Theme.of(context).primaryColor,
                  ),



                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: <Widget>[
                      IconButton(
                        onPressed: (){
                          setState(() {
                            currentPageNumber = 0;
                            pageController.jumpToPage(currentPageNumber);
                          });
                        },
                        icon: Icon(Icons.home, color: currentPageNumber  == 0  ?  Colors.white: Colors.grey,),
                      ),

                      IconButton(
                        onPressed: (){
                          setState(() {
                            currentPageNumber = 1;
                            pageController.jumpToPage(currentPageNumber);
                          });
                        },
                        icon: Icon(Icons.add_circle,color: currentPageNumber == 1 ?  Colors.white: Colors.grey,),
                      ),

                      IconButton(
                        onPressed: (){
                          setState(() {
                            currentPageNumber = 2;
                            pageController.jumpToPage(currentPageNumber);
                          });
                        },
                        icon: Icon(Icons.message,color: currentPageNumber == 2 ?  Colors.white: Colors.grey,),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            currentPageNumber = 3;
                            pageController.jumpToPage(currentPageNumber);
                          });
                        },
                        child: FittedBox(
                            child: CircleAvatar(
                              radius: 12.0,
                              child: Icon(Icons.person,color: currentPageNumber == 3 ?  Colors.white: Colors.grey,),
                            )
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}


