import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 30, 65),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/headshot.jpg'),
              ),
              const Text(
                'Ria Tandon',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'UNIVERSITY OF MICHIGAN',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Color.fromARGB(255, 70, 109, 137),
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color.fromARGB(255, 70, 109, 137),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 70, 109, 137),
                  ),
                  title: Text(
                    '+1 908 381 2948',
                    style: TextStyle(
                      color: Color.fromARGB(255, 70, 109, 137),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: InkWell(
                    onTap: _launchLinkedInURL,
                    child: Image.asset(
                      'images/linkedin.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 70, 109, 137),
                  ),
                  title: Text(
                    'rtandonn@umich.edu',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 70, 109, 137),
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } 

  void _launchLinkedInURL() async {
    const linkedInUrl = 'http://linkedin.com/in/ria-tandon05'; // Replace with your LinkedIn URL
    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      throw 'Could not launch $linkedInUrl';
    }
  }
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 25, 30, 65),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/headshot.jpg'),
            ),
            const Text(
              'Ria Tandon',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'UNIVERSITY OF MICHIGAN',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Color.fromARGB(255, 70, 109, 137),
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Color.fromARGB(255, 70, 109, 137),
              ),
            ),
            Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 70, 109, 137),
                  ),
                  title: Text(
                    '+1 908 381 2948',
                    style: TextStyle(
                      color: Color.fromARGB(255, 70, 109, 137),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 70, 109, 137),
                  ),
                )),
            Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 70, 109, 137),
                  ),
                  title: Text(
                    'rtandonn@umich.edu',
                    style: TextStyle(fontSize: 20.0, color:Color.fromARGB(255, 70, 109, 137), fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}


// og teal: 255, 79, 163, 155
// dark blue: 255, 25, 30, 65
// steel blue: 255, 70, 109, 137 */