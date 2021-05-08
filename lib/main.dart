import 'package:flutter/material.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Profile Screen',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "ErezOr",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24.0),
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/new-video.png"),
            onPressed: () => print("presed"),
            color: Colors.black,
          ),
          IconButton(
            icon: Image.asset("assets/icons/menu.png"),
            onPressed: () => print("pressed"),
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/avatar.png"),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "210\n",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          TextSpan(text: "post"),
                        ],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "600\n",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          TextSpan(text: "followers"),
                        ],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "500\n",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          TextSpan(text: "following"),
                        ],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                  child: Text(
                    "Erez Or",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Text(
                    "my description into my design hope you will like it",
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Text(
                    "erezor.dev",
                    style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 15.0,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 3,
                        child: TextButton(
                          onPressed: () => print("pressed"),
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        onPressed: () => print("pressed"),
                        child: Text(
                          "Message",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Material(
                      type: MaterialType
                          .transparency, //Makes it usable on any background color, thanks @IanSmith
                      child: Ink(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          shape: BoxShape.rectangle,
                        ),
                        child: InkWell(
                          //This keeps the splash effect within the circle
                          borderRadius: BorderRadius.circular(
                              5), //Something large to ensure a circle
                          onTap: () => print("pressed"),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Material(
                            type: MaterialType
                                .transparency, //Makes it usable on any background color, thanks @IanSmith
                            child: Ink(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                //This keeps the splash effect within the circle
                                borderRadius: BorderRadius.circular(
                                    1000000), //Something large to ensure a circle
                                onTap: () => print("pressed"),
                                child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                        "assets/images/story_beach.png")),
                              ),
                            ),
                          ),
                          Text("story 1"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Material(
                            type: MaterialType
                                .transparency, //Makes it usable on any background color, thanks @IanSmith
                            child: Ink(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                //This keeps the splash effect within the circle
                                borderRadius: BorderRadius.circular(
                                    1000000), //Something large to ensure a circle
                                onTap: () => print("pressed"),
                                child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                        "assets/images/story_flower.png")),
                              ),
                            ),
                          ),
                          Text("story 3"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Material(
                            type: MaterialType
                                .transparency, //Makes it usable on any background color, thanks @IanSmith
                            child: Ink(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                //This keeps the splash effect within the circle
                                borderRadius: BorderRadius.circular(
                                    1000000), //Something large to ensure a circle
                                onTap: () => print("pressed"),
                                child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                        "assets/images/story_sky.png")),
                              ),
                            ),
                          ),
                          Text("story 3"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2.0),
              child: Image(
                fit: BoxFit.cover,
                image:
                    AssetImage(imagePath + "user_post_${index + 1}.png"),
              ),
            ),
          );
        })
          ),
        ],
      ),
    );
  }
}
