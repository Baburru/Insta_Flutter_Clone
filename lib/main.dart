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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set background color
          titleTextStyle: TextStyle(
            color: Colors.white, // Set text color
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'mike.hrmntrt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Row(
            children: <Widget>[
              Text(widget.title),
              IconButton(
                icon: const Icon(Icons.expand_more),
                onPressed: () {
                  // Ajoutez votre code ici pour gérer le clic sur l'icône
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.add_box_rounded),
                onPressed: () {
                  // Ajoutez votre code ici pour gérer le clic sur l'icône
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Ajoutez votre code ici pour gérer le clic sur l'icône
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://static.wikia.nocookie.net/breakingbad/images/8/8b/MikeS5.jpg/revision/latest?cb=20130722224232&path-prefix=fr"),
                    ),
                    Column(
                      children: [
                        Text("4",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Publications"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("174",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Followers"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Suivi(e)s"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Mike Ehrmantraut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "For those who know, actions speak louder than words.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ])
                    ],
                  )),
            ],
          ),
        ));
  }
}
