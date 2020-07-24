import 'package:flutter/material.dart';

MaterialApp myApp() {
  String myimgurl =
      'https://pbs.twimg.com/profile_images/1101017664565047296/HjsAtquu_400x400.png';
  var myimage = Image.network(myimgurl);
  var mytext = Text(
    "Student@AWS",
    style: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    textDirection: TextDirection.ltr,
  );
  /* these are just icons , they can't be used to perform certain actions we have to use this icons with something*/
  Icon myEmail = Icon(
    Icons.mail,
    color: Colors.white70,
  );
  Icon myCal = Icon(
    Icons.calendar_today,
    color: Colors.white70,
  );

  mymail() {
    print("Clicked Email button");
  }

  mycal() {
    print("Clicked Calendar button");
  }

  /*Buttons have onPressed and other events so the icons can be used here they are called IconButton*/
  IconButton myEmailButton = IconButton(icon: myEmail, onPressed: mymail);
  IconButton myCalButton = IconButton(icon: myCal, onPressed: mycal);

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.amber,
    leading: Image.network(
        'https://raw.githubusercontent.com/devmohit-live/Images_of_repo/master/portfolio_logos/aws_logo_smile_1200x630.png'),
    actions: <Widget>[
      myEmailButton,
      myCalButton,
    ],
  );

  var scf = Scaffold(
    appBar: myappbar,
    body: Container(
      height: 500,
      alignment: Alignment.bottomCenter,
      child: Text(
        "Your Caption Here",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(myimgurl), fit: BoxFit.contain)),
      // color: Colors.blue,
    ),
    backgroundColor: Colors.black87,
  );

  var design = MaterialApp(
    home: scf,
    debugShowCheckedModeBanner: false,
  );

  return design;
}