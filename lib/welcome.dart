import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 249, 210, 224),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 470,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.85,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: ListTile(
                                  leading: const CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(
                                          "https://img.freepik.com/free-photo/male-beauty-concept-portrait-fashionable-young-man-with-stylish-haircut-wearing-trendy-suit-posing-black-studio-background_155003-21656.jpg?w=996&t=st=1677863819~exp=1677864419~hmac=1abb29aea4df2166c788be3506d59b4a4e483132fbdbaa3682e628efb69decc1")),
                                  title: const Text("Jordan"),
                                  subtitle: const Text("Hii!"),
                                  trailing: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Text("12:00"),
                                      CircleAvatar(
                                        radius: 9,
                                        backgroundColor: Colors.red,
                                        child: Text("1"),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ]),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      "https://img.freepik.com/free-photo/blue-eyes-wavy-modern-one-beautiful_1139-828.jpg?w=996&t=st=1677864022~exp=1677864622~hmac=0d403f81c8a6d790cadc3ffa01226c2f40beac406520ff7a4f92a6c5fb12ebb2")),
                              const Text(
                                "Find Flames",
                                style:
                                    TextStyle(color: Colors.pink, fontSize: 18),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.tune,
                                    size: 25,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Stack(children: [
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                      image: const NetworkImage(
                                          "https://img.freepik.com/free-photo/cool-guy-good-mood-posing-blue-background-jumping_197531-26875.jpg?w=996&t=st=1677864123~exp=1677864723~hmac=378b3486fac9afb3bdf4794e64c63b1585ef3f21d05b634e265efcfba4519522"),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.white.withOpacity(0.4),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 110,
                                  width: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "20",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 15,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.white),
                                        child: const Center(
                                            child: Text(
                                          "Likes",
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                height: 110,
                                width: MediaQuery.of(context).size.width / 1.42,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Stack(children: [
                                          Container(
                                            height: 100,
                                            width: 80,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://img.freepik.com/free-photo/stylish-handsome-indian-man-tshirt-pastel-wall_496169-1571.jpg?size=626&ext=jpg&ga=GA1.2.665965149.1660828147&semt=sph"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 15,
                                                    width: 60,
                                                    decoration:
                                                        const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                            color:
                                                                Colors.white),
                                                    child: const Center(
                                                        child: Text(
                                                      "Nick",
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ]),
                                        const SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 230,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        prefixIcon: const Icon(CupertinoIcons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Colors.pink),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting, // Shifting
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.globe,
                size: 30,
              ),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.calendar_today,
                size: 30,
              ),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_2,
                size: 30,
              ),
              label: 'Message',
            ),
          ],
        ));
  }
}
