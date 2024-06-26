import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:student_management/constants/colors.dart';
import 'package:student_management/constants/constants.dart';
import 'package:student_management/presentation/add_student/screen_add_student.dart';
import 'package:student_management/presentation/screen_view_student/screen_view_students.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Kblack,
        title: const Text(
          'Student',
          style: TextStyle(
              color: KWhite,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: Lottie.asset('assets/animations/student.json'),
            ),
            height20,
            elevatedbutton(size, 'Add Details', const AddStudent()),
            height10,
            elevatedbutton(size, 'View List', const ViewStudentPage())
          ],
        ),
      ),
    ));
  }

  ElevatedButton elevatedbutton(Size size, String title, page) {
    return ElevatedButton(
      onPressed: () {
        Get.to(page);
      },
      style: ElevatedButton.styleFrom(
          minimumSize: Size(size.width - 120, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Kblack),
      ),
    );
  }
}
