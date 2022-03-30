import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: FormScreen(),
    ));

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("User Info"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          Row(children: [
            const SizedBox(width: 25),
            const Icon(Icons.person),
            const SizedBox(width: 20),
            Text(name),
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const SizedBox(width: 25),
            const Icon(Icons.phone),
            const SizedBox(width: 20),
            Text(phoneNumber),
          ]),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Row(children: [
              const SizedBox(width: 25),
              Text(email),
            ]),
            const SizedBox(height: 20),
            Row(children: [
              const SizedBox(width: 25),
              Text(country),
            ]),
            const SizedBox(height: 20),
            Row(children: [
              const SizedBox(width: 25),
              Text(password),
            ]),
            const SizedBox(width: 15),
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const SizedBox(width: 25),
            Container(
              width: 280,
              child: Text(lifeStory),
            ),
            const SizedBox(height: 20),
          ]),
        ],
      ),
    );
  }
}

var name = "";
var phoneNumber = "";
var country = "";
var email = "";
var lifeStory = "";
var password = "";

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController lifeStoryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter userName';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Full Name *',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                  hintText: "What do people call you?",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Phone Number *',
                  hintText: "Where can we reach you?",
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                  ),
                ),
              ),
            ),

            //E-mail
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  hintText: "Where can we write you?",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: countryController,
                decoration: const InputDecoration(
                  labelText: 'Country',
                  hintText: "Enter Country",
                  prefixIcon: Icon(Icons.map),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                minLines: 6,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: lifeStoryController,
                decoration: const InputDecoration(
                  hintText: "Life Story",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: "Repeat entered Password",
                  prefixIcon: Icon(Icons.comment_sharp),
                ),
              ),
            ),
            SizedBox(height: 25),
            RaisedButton(
              padding: const EdgeInsets.all(10.0),
              color: Colors.green,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  name = nameController.text;
                  phoneNumber = phoneController.text;
                  email = emailController.text;
                  lifeStory = lifeStoryController.text;
                  password = passwordController.text;
                  country = countryController.text;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                }
              },
              child: Text(
                "Submit Form",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
