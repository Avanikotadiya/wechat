import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/secondscreen.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.camera_alt_outlined),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                    MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              centerTitle: true,
              title: Text(
                "Wechat",
                style: TextStyle(

                ),
              ),
              actions: [
                Icon(Icons.search_sharp),
                Padding(padding: EdgeInsets.only(right: 20),child: Container(),),
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Container(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    margin: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 36,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 36, 48, 86),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getButton(id: 1, title: 'Chats'),
                        getButton(id: 2, title: 'Status'),
                        getButton(id: 3, title: 'Calls'),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 2, child: Container()),
                Expanded(
                  flex: 28,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: clicked == 1
                              ? Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        "All Chats",
                                        style: TextStyle(

                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 180),
                                    Icon(Icons.menu_rounded),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        'Friends',
                                        style: TextStyle(

                                          fontWeight: FontWeight.w100,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                getDetail(
                                    title: "Joe Root",
                                    image: "assets/person1.png",
                                    text:
                                    "Okay.I'll try.Can you help.....",
                                    time: "2:45"),
                                getDetail(
                                    title: "Navel Joard",
                                    image: "assets/person2.png",
                                    text:
                                    "Hahaha. Really you're a great person",
                                    time: "4:15"),
                                getDetail(
                                    title: "James Anderson",
                                    image: "assets/person3.png",
                                    text: "Thanks for your appreciations",
                                    time: "6:30"),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 13,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See more  >',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 85, 100),
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        'Group Message',
                                        style: TextStyle(

                                          fontWeight: FontWeight.w100,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                getDetail(
                                    image: 'assets/groupicon1.png',
                                    title: 'Meetup 2020',
                                    text: 'See you man!Thanks a lot.',
                                    time: '2:45'),
                                getDetail(
                                    image: 'assets/groupicon2.png',
                                    title: 'dotpixel-agency',
                                    text:
                                    'My task is almost ready. Send it..',
                                    time: '2:45'),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 13,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See more  >',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 85, 100),

                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                              : null,
                        ),
                        Container(
                          child: clicked == 2
                              ? Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        "My Status",
                                        style: TextStyle(

                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                getDetail(
                                    image: 'assets/person3.png',
                                    title: 'Steven Smith',
                                    text: 'Tap to add status',
                                    time: '2:45'),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        'Friends',
                                        style: TextStyle(

                                          fontWeight: FontWeight.w100,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                              : null,
                        ),
                        Container(
                          child: clicked == 3
                              ? Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        "All Calls",
                                        style: TextStyle(

                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 190),
                                    Icon(Icons.menu_rounded),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        'Friends',
                                        style: TextStyle(

                                          fontWeight: FontWeight.w100,
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                getDetail(
                                  title: "Joe Root",
                                  image: "assets/person1.png",
                                  text: "(3)15 July, 1:30 am",
                                  icon: Icon(
                                    Icons.phone_forwarded,
                                    color: Colors.orange,
                                  ),
                                ),
                                getDetail(
                                  title: "Navel Joard",
                                  image: "assets/person2.png",
                                  text: "15 July, 7:00 am",
                                  icon: Icon(
                                    Icons.phone_callback,
                                    color: Colors.blue,
                                  ),
                                ),
                                getDetail(
                                  title: "James Anderson",
                                  image: "assets/person3.png",
                                  text: "17 July, 10:30 am",
                                  icon: Icon(
                                    Icons.phone_missed,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 13,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See more  >',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 85, 100),

                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        'Group Message',
                                        style: TextStyle(

                                          fontWeight: FontWeight.w100,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                getDetail(
                                  image: 'assets/groupicon1.png',
                                  title: 'Meetup 2020',
                                  text: '(3) 12 July, 10:25 pm',
                                  icon: Icon(Icons.phone_callback,
                                      color: Colors.blue),
                                ),
                                getDetail(
                                  image: 'assets/groupicon2.png',
                                  title: 'dotpixel-agency',
                                  text: '17 July, 10:30 am',
                                  icon: Icon(
                                    Icons.phone_missed,
                                    color: Colors.red,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 13,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See more  >',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 85, 100),
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int clicked = 1;

  Widget getButton({id, title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = id!;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: clicked == id ? Color.fromARGB(255, 24, 34, 67) : null,
        ),
        child: Text(title,
            style: TextStyle(

                color: clicked == id
                    ? Color.fromARGB(255, 250, 240, 233)
                    : Colors.white)),
      ),
    );
  }

  Widget getDetail({image, title, text, time, icon}) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.only(bottom: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  title.toString().trim(),
                  style: const TextStyle(
                    fontSize: 15,

                  ),
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            child: icon == null ? Text(time) : Container(child: icon),
          ),
        ],
      ),
    );
  }
}
