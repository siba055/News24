import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ListView(children: [
        Container(
          height: 80,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "citynect",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                      fontSize: 40,
                      color: Colors.black),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey.shade700,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.grey.shade700,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: const CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 20,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
            ),
          ),
          trailing: const Icon(Icons.more_horiz),
          title: Row(
            children: const [
              Text(
                "@mekrishna ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "in chandkheda",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          subtitle: Text(
            "1 hour and 31 min ago",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Container(
          height: 400,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Looking for good animal doctor in chandkheda, anybody can suggest??",
                    maxLines: 2,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      "http://cdn.akc.org/content/article-body-image/samoyed_puppy_dog_pictures.jpg",
                      fit: BoxFit.fill,
                      width: 380,
                      height: 250,
                    ),
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                  color: Colors.black45,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (isFavorite == true) {
                                  isFavorite = false;
                                } else {
                                  isFavorite = true;
                                }
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_outline_sharp,
                              color: const Color.fromARGB(255, 255, 17, 0),
                            ),
                          ),
                          Text(
                            " 5 Likes",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_sharp,
                              size: 25,
                              color: Color.fromARGB(255, 0, 140, 255),
                            ),
                          ),
                          Text(
                            " 3 Comments",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                size: 25,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_outline,
                                size: 25,
                                color: Colors.grey.shade800,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: const CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 20,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  "https://d1nhio0ox7pgb.cloudfront.net/_img/v_collection_png/512x512/shadow/businessman.png"),
            ),
          ),
          trailing: const Icon(Icons.more_horiz),
          title: Row(
            children: const [
              Text(
                "@dhruv_20 ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "in Jantanagar",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          subtitle: const Text(
            "10 mins ago",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Container(
          height: 200,
          color: Colors.white,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Text(
                "me and my few friends are going for food kit distribution to poor child tommorow. If anybody wants to join us. Do let me know. Tommorow at 09:30 am.We all will meet at GNK ground. ",
                maxLines: 4,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Divider(
              height: 40,
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Colors.grey.shade600,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (isFavorite == true) {
                              isFavorite = false;
                            } else {
                              isFavorite = true;
                            }
                          });
                        },
                        icon: Icon(
                          isFavorite
                              ? Icons.favorite
                              : Icons.favorite_outline_sharp,
                          color: const Color.fromARGB(255, 255, 17, 0),
                        ),
                      ),
                      Text(
                        " 5 Likes",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_sharp,
                          size: 25,
                          color: Color.fromARGB(255, 0, 140, 255),
                        ),
                      ),
                      Text(
                        " 3 Comments",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      )
                    ],
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 25,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_outline,
                            size: 25,
                            color: Colors.grey.shade800,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 55,
        width: 55,
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 5.0,
            onPressed: (() {}),
            backgroundColor: Color.fromARGB(255, 1, 8, 229),
            child: const Icon(
              Icons.add_circle_outline,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 5.0,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    padding: const EdgeInsets.only(left: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.home,
                      color: Colors.black54,
                      size: 30,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(right: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.compass,
                      size: 30,
                      color: Colors.black54,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(left: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.calendar,
                      color: Colors.black54,
                      size: 30,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(right: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.person_alt_circle,
                      color: Colors.black54,
                      size: 30,
                    )),
              ],
            ),
          )),
    ));
  }
}
