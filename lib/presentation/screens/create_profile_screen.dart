import 'package:flutter/material.dart';
import 'package:ott102/common/color.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 40, color: Colors.white),
        backgroundColor: backgroundColor,
        title: Text(
          '프로필 추가',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: Text('취소', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: Column(children: [
      ]),
    );
  }
}
