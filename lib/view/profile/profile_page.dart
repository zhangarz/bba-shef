import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    double width = MediaQuery.of(context).size.width / 100;

    var body = Padding(
      padding: EdgeInsets.all(8 * width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Icon(
          //   Icons.account_circle_outlined,
          //   size: width * 40,
          // ),
          // SizedBox(height: 20 * height),
          SizedBox(
            height: 8 * height,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    elevation: .3),
                child: Row(
                  children: [
                    Icon(Icons.bookmark_outline_rounded),
                    SizedBox(width: 10),
                    Text('Your List',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600))
                  ],
                )),
          ),
          SizedBox(height: 2 * height),
          SizedBox(
            height: 8 * height,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    elevation: .3),
                child: Row(
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(width: 10),
                    Text('Share With Friends',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600))
                  ],
                )),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      appBar: AppBar(
        toolbarHeight: 8 * height,
        elevation: .3,
        backgroundColor: Color(0xffE45B5F),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: body,
    );
  }
}
