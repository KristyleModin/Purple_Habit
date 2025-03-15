// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';

class PurpleHabitLogin extends StatefulWidget {
  const PurpleHabitLogin({super.key});

  @override
  State<PurpleHabitLogin> createState() => _PurpleHabitLoginState();
}

class _PurpleHabitLoginState extends State<PurpleHabitLogin> {
  bool rememberMe = false;
  bool obscureText = true;
  
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 600; 

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/images/background_draft_1.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : screenWidth * 0.2,
                  vertical: isMobile ? 50 : 150,
                ),
                child: Container(
                  width: isMobile ? screenWidth * 0.9 : 400,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.deepPurple.shade900,
                      width: 1.2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Purple Habit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isMobile ? 28 : 35,
                              color: Colors.deepPurple[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isMobile ? 28 : 35,
                              color: Colors.deepPurple[600],

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Don't have an account? Create your account, \n it takes less than a minute",
                          style: TextStyle(
                            fontSize: isMobile ? 12 : 14,
                            color: Colors.blueGrey[700],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "youremail@company.com",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 8, right: 8, bottom: 8),
                        child: TextField(
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                  }
                                );
                              }, 
                              icon: Icon(
                                  obscureText ? Icons.visibility_off : Icons.visibility,
                                ),
                              ),
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),  
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberMe, 
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value!;
                                    }
                                  );
                                }
                              ),
                              Text("Remember Me"), 
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot Password'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple[600],
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Login with',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isMobile ? 12 : 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.star, color: Colors.indigo),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite, color: Colors.deepPurple[400]),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.diamond, color: Colors.blueGrey),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "@ Copyright 2019 - Drivester Ltd.\n 67 Albion Street, Wesk Yorkshire, Leeds LS1 5AA, United Kingdom",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isMobile ? 10 : 12,
                            color: Colors.blueGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}