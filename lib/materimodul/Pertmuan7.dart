import 'package:flutter/material.dart';

class Pertemuan7 extends StatelessWidget {
  const Pertemuan7({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pertemuan 7"),
          bottom: TabBar(
            tabs: [
              Tab(text: "List View"),
              Tab(text: "List View Builder"),
              Tab(text: "List View Separated"),
              Tab(text: "Test"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ContohListView(),
            ContohListViewBuilder(),
            ContohListViewSeparated(),
            Nyoba(),
          ],
        ),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberList = List.generate(10, (int index) => index);
  // final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: numberList.map((int number) {
      return Container(
        height: 250.0,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text("${number}", style: TextStyle(fontSize: 50)),
        ),
      );
    }).toList());
  }
}

class ContohListViewBuilder extends StatelessWidget {
  // final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  final List<int> numberList = List.generate(10, (int index) => index);
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.pink, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      itemCount: numberList.length,
    );
  }
}

class ContohListViewSeparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.pink, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20,
            color: Colors.amber,
          );
        },
        itemCount: numberList.length);
  }
}

class Nyoba extends StatelessWidget {
  const Nyoba({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      child: IconButton(
          icon: Icon(Icons.library_add),
          onPressed: () {
            Scaffold.of(context).showBottomSheet((context) => Container(
                  height: 100.0,
                  color: Colors.cyan,
                ));
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size.square(20.0),
            maximumSize: Size.square(50.0),
          )),
    );
  }
}
