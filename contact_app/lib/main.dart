import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Image.network(
                    "https://github.com/dhairyajain29/Flutter-projects/blob/main/contact_app/dhairya.jpeg?raw=true",
                    //"https://github.com/dhairyajain29/Flutter-projects/blob/main/contact_app/download.jpg?raw=true",
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Dhairya Jain",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                //NEW CODE: Container for action items
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //"Call" action item
                      buildCallButton(),

                      //"Text" action item
                      buildTextButton(),

                      buildVideoCallButton(),
                      // "Videocall" action item.

                      buildEmailButton(),
                      // "Email" action item

                      buildDirectionsButton(),
                      // "direction" action item

                      buildPayButton(),
                      // "Pay" action time

                      //mobilePhoneListTitle(),
                      // "List of phones"
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),

                mobilePhoneListTile(),
                otherPhoneListTile(),

                Divider(
                  color: Colors.grey,
                ),

                emailListTile(),
                addressListTile(),

                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//Adding "Call" action item
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

//Adding "Text" action item
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

// Adding "video call" action item
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Video Call"),
      ],
    );
  }

  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.payment,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }

  Widget mobilePhoneListTile() {
    return ListTile(
        leading: Icon(Icons.call),
        title: Text("+91 6260764293"),
        subtitle: Text("Mobile"),
        trailing: IconButton(
          icon: Icon(Icons.message),
          color: Colors.indigo.shade400,
          onPressed: () {},
        ));
  }

  Widget otherPhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call_outlined),
      title: Text("0731-9999999"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }

  Widget emailListTile() {
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("dhairyajain29@gmail.com"),
      subtitle: Text("Personal"),
    );
  }

  Widget addressListTile() {
    return ListTile(
      leading: Icon(Icons.location_on),
      title: Text("Suman nagar, Vijay Nagar, Indore"),
      subtitle: Text("Home"),
      trailing: IconButton(
        icon: Icon(Icons.directions),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }
}
