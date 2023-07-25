import 'dart:ui';
import 'package:demo/maindrawer.dart';
import 'package:demo/remote_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'models/newsmodel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  Cart? news;
  bool isloaded = false;
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    news = await Remote().getuserdata();

    setState(() {
      isloaded = true;
    });
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            ),
          )
        ],
        title: const Text(
          "News",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      drawer: const Maindrawer(),
      body: isloaded
          ? SizedBox(
              height: window.physicalSize.height,
              width: window.physicalSize.width,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SmartRefresher(
                  controller: _refreshController,
                  enablePullDown: true,
                  enablePullUp: true,
                  onRefresh: () => getdata(),
                  header: const WaterDropMaterialHeader(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    distance: 100.0,
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: news?.articles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return isloaded
                            ? Column(
                                children: [
                                  ListTile(
                                    tileColor: Colors.white,
                                    leading: const CircleAvatar(
                                      radius: 18,
                                      backgroundImage: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_horiz)),
                                    title: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            news!.articles[index].author,
                                            maxLines: 2,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                    subtitle: Text(
                                      news!.articles[index].publishedAt
                                          .toString()
                                          .substring(0, 10),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  Container(
                                    height: 510,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            child: Text(
                                              news!.articles[index].title,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                            child: Image.network(
                                              news!.articles[index].urlToImage,
                                              fit: BoxFit.cover,
                                              width: 400,
                                              height: 250,
                                            ),
                                          ),
                                          const Divider(
                                            height: 40,
                                            thickness: 1,
                                            indent: 15,
                                            endIndent: 15,
                                            color: Colors.black45,
                                          ),
                                          SizedBox(
                                            height: 70,
                                            child: Expanded(
                                              flex: 2,
                                              child: Text(
                                                news!.articles[index].content,
                                                style: const TextStyle(
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (isFavorite ==
                                                            true) {
                                                          isFavorite = false;
                                                        } else {
                                                          isFavorite = true;
                                                        }
                                                      });
                                                    },
                                                    icon: Icon(
                                                      isFavorite
                                                          ? Icons.favorite
                                                          : Icons
                                                              .favorite_outline_sharp,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 255, 17, 0),
                                                    ),
                                                  ),
                                                  Text(
                                                    " 5 Likes",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontSize: 12),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.comment_sharp,
                                                      size: 25,
                                                      color: Color.fromARGB(
                                                          255, 0, 140, 255),
                                                    ),
                                                  ),
                                                  Text(
                                                    " 3 Comments",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ),
                                              Container(
                                                width: 100,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.share,
                                                        size: 25,
                                                        color: Colors
                                                            .grey.shade800,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.bookmark_outline,
                                                        size: 25,
                                                        color: Colors
                                                            .grey.shade800,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "    ${news!.articles[index].publishedAt.toString().substring(11, 19)}",
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black54),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                            : CircularProgressIndicator();
                      }),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          notchMargin: 10.0,
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
                      color: Colors.blue,
                      size: 30,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(right: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.compass,
                      size: 30,
                      color: Colors.blue,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(left: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.calendar,
                      color: Colors.blue,
                      size: 30,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(right: 28),
                    onPressed: (() {}),
                    icon: const Icon(
                      CupertinoIcons.person_alt_circle,
                      color: Colors.blue,
                      size: 30,
                    )),
              ],
            ),
          )),
    ));
  }
}
