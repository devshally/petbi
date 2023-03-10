import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(padding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100.h,
              leading: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SvgPicture.asset(AppImages.menuIcon),
              ),
              leadingWidth: 20.w,
              titleSpacing: 36.w,
              title: TextView(
                text: 'Welcome',
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
