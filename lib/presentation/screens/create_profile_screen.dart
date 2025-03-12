import 'package:flutter/material.dart';
import 'package:ott102/common/color.dart';
import 'package:ott102/data/repositories/shared_pref_repository.dart';
import 'package:ott102/domain/use_case/profile_use_case.dart';
import 'package:ott102/presentation/providers/create_profile_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateProfileScreen extends StatefulWidget {
  CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();

  final CreateProfileProvider provider = CreateProfileProvider(ProfileUseCase(SharedPrefRepository())),
  );
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Icon(Icons.arrow_back, size: 40, color: Colors.white),
          ),
          backgroundColor: backgroundColor,
          title: Text(
            '프로필 추가',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: Navigator.of(context).pop,
                child: Text('취소', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        body: Column(),
      ),
    );
  }
}
