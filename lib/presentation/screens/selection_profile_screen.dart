import 'package:flutter/material.dart';
import 'package:ott102/common/color.dart';
import 'package:ott102/presentation/components/empty_profile_card.dart';
import 'package:ott102/presentation/screens/create_profile_screen.dart';

class SelectionProfileScreen extends StatelessWidget {
  const SelectionProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '시청할 프로필을 선택하세요.',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(flex: 10),
            EmptyProfileCard(),
            Spacer(flex: 15),
            Center(
              child: GestureDetector(
                onTap:
                    () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CreateProfileScreen()),
                    ),
                child: Column(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 60,
                    ),
                    SizedBox(height: 6),
                    Text('프로필 추가', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
