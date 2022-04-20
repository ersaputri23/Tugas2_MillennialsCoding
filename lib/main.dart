import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Demo',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Products', style: TextStyle(fontSize: 25, color: Colors.blue)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
              Colors.white,
              Colors.white
            ])),
          ),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: ListTile(
                      leading: Image.network("https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2Ny8yODQvMzM3OTE1ODcwMi84MDIxOC8yOTFhYzQ1Mi82MDJiM2I0YU43MzE0MjUzMg.jpg.dpg.webp"),
                      title: Text(
                        "Baju Atasan Wanita",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Atasan Wanita Baju Wanita Atasan Cewe Baju Cewe Atasan Rajut Polos L30 Baju Cewek Atasan Cewek Wanita Terbaru",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
