import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.chevron_left),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search in social....",
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Explore Stories", style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "For You",
                "Following",
                "Popular",
                "Featured",
                "Live",
                "Nature",
                "All",
                "Favorite",
              ].map((e) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: (e == "For You")
                      ? Column(
                          children: [
                            Text(e),
                            const SizedBox(height: 5),
                            const Icon(Icons.circle, size: 5)
                          ],
                        )
                      : Text(
                          e,
                          style: const TextStyle(color: Colors.white38),
                        ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  "https://w.forfun.com/fetch/84/8428273ca48b923982f387a26c510063.jpeg",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuBLgmLjuW9Sky4WALr-tEy8Cym9fBeBxNQ&usqp=CAU",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuBLgmLjuW9Sky4WALr-tEy8Cym9fBeBxNQ&usqp=CAU",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIo0QxMxbZOLGGSerlxuABlH7c7B-4egSqlw&usqp=CAU",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIo0QxMxbZOLGGSerlxuABlH7c7B-4egSqlw&usqp=CAU",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIo0QxMxbZOLGGSerlxuABlH7c7B-4egSqlw&usqp=CAU",
                  "https://images.unsplash.com/photo-1628707351135-e963f2aa4387?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHdhbGxwYXBlciUyMGZvciUyMG1vYmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                  "https://images.unsplash.com/photo-1628707351135-e963f2aa4387?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHdhbGxwYXBlciUyMGZvciUyMG1vYmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                ]
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Image.network(e,
                                  height: double.maxFinite,
                                  width: double.maxFinite,
                                  fit: BoxFit.fill),
                              Positioned.fill(
                                bottom: 15,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              height: 40,
                                              width: 40,
                                              fit: BoxFit.fill,
                                              "https://i.pinimg.com/736x/f1/4c/81/f14c813d3f9b95774557ab0e0aa71148.jpg",
                                            ),
                                          )),
                                      const SizedBox(height: 6),
                                      const Text("Edword Ford",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                              )
                              // Positioned.fill(
                              //     child: Image.network(
                              //       height: 40,
                              //       width: 40,
                              //       "https://i.pinimg.com/736x/f1/4c/81/f14c813d3f9b95774557ab0e0aa71148.jpg",
                              //     ))
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
