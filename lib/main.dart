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
/*                   print('Click icon Button'); */
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
              Container(
                height: 30,
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 23, 23, 23),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding:
                                const EdgeInsets.only(left: 30, right: 30)),
                        child: const Text(
                          "Modifier le profil",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 23, 23, 23),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding:
                                const EdgeInsets.only(left: 30, right: 30)),
                        child: const Text(
                          "Partager le profil",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero, // Set this
                            backgroundColor:
                                const Color.fromARGB(255, 23, 23, 23),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(5)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 15, left: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stories à la une",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "Conservez vos stories préférées sur votre profil.",
                              style: TextStyle(fontSize: 13),
                            ),
                          ])
                    ],
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.white, width: 1),
                                  minimumSize: Size.zero, // Set this
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  padding: const EdgeInsets.all(25)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size.zero, // Set this
                                    backgroundColor:
                                        const Color.fromARGB(255, 30, 30, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(38)),
                                child: null),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size.zero, // Set this
                                    backgroundColor:
                                        const Color.fromARGB(255, 30, 30, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(38)),
                                child: null),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size.zero, // Set this
                                    backgroundColor:
                                        const Color.fromARGB(255, 30, 30, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(38)),
                                child: null),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size.zero, // Set this
                                    backgroundColor:
                                        const Color.fromARGB(255, 30, 30, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(38)),
                                child: null),
                          ),
                        ]),
                  ))
            ],
          ),
        ));
  }
}
