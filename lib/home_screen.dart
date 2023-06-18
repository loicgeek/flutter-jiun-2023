import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text("Application counter"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            FacebookCard(),
            ConversationItem(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Square(),
                Square(),
                Square(),
              ],
            ),
            // Square(),
            // Square(),
            // Square(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.yellow,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

class ConversationItem extends StatelessWidget {
  const ConversationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 8,
            ),
            child: Container(
              height: 40,
              width: 40,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rudy"),
                    Text("12:46"),
                  ],
                ),
                Text("Bonjour, comment tu vas?"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        color: Colors.red,
      ),
    );
  }
}

class FacebookCard extends StatelessWidget {
  const FacebookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BENJI 2Infos"),
                      Row(
                        children: [
                          Text("Suggested for you"),
                          Text("."),
                          Text("19h"),
                          Icon(Icons.circle)
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close),
                  ],
                )
              ],
            ),
          ),
          // card content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("C'est fort ca!"),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 2),
                    Text("3.6k"),
                  ],
                ),
                Row(
                  children: [
                    Text("772 comments"),
                    SizedBox(width: 4),
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text("14 shares"),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Like"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Comments"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
