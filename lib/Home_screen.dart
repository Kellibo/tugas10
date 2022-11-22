import 'package:flutter/material.dart';
import 'package:tugas10/Form_screen.dart';
import 'Form_login.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 254, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FROM LOGIN & REGISTER'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 600,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  "https:https:https://assets.jalantikus.com/assets/cache/466/450/userfiles/2022/06/07/Ultraman-Lucu-PP-WA-4-04c87.jpg",
                )),
            Column(
              children: [
                Text('WELCOME',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text('',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text("Don't have an account? Sign UP Now"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 202, 202),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FormScreen();
                      }));
                    },
                    child: const Text('Login'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 119, 108, 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    child: const Text('Register'),
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
