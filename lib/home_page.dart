import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text("DSC App"),
          leading: Icon(Icons.home),
          actions: [
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.edit),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/248275070_2997104663940169_5379034478312343304_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=USYiuR3o62MAX-6tMqS&_nc_ht=scontent.fcai21-2.fna&oh=00_AT_5N2uuYWVrW-DKWIGhTjehH9HFDCFyfJpWX9cbhS7wBw&oe=626086CE"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name is empty";
                      } else {
                        return null;
                      }
                    },
                    controller: nameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: "userName",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password is empty";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Colors.red, Colors.blue],
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Acount ?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )),
                    ],
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
