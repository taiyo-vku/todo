import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_colors.dart';
import 'package:todo/utils/constants/app_strings.dart';
import 'package:todo/utils/extensions/space_ext.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      //TODO : FAB
      floatingActionButton: GestureDetector(
        onTap: () {
          log('Hello Babe');
        },
        child: Material(
          borderRadius: BorderRadius.circular(16),
          elevation: 10,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Icon(Platform.isAndroid ? Icons.add : CupertinoIcons.add),
            ),
          ),
        ),
      ),

      // TODO : Body
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // TODO : Custom AppBar
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      value: 1,
                      valueColor: AlwaysStoppedAnimation(AppColors.primary),
                    ),
                  ),
                  25.w,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.mainTittle,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      3.w,
                      Text(
                        '1 of 3 task',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 2,
                indent: 100,
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 745,
              child: ListView.builder(itemBuilder: (context, index) {
                return AnimatedContainer(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), blurRadius: 10),
                    ],
                  ),
                  duration: const Duration(milliseconds: 600),
                  child: ListTile(
                    leading: AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
