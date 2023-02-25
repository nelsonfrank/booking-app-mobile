import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
              style: Styles.headingLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
                padding: const EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    /**Airline ticket */
                    Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(AppLayout.getWidth(10))),
                            color: Colors.white),
                        child: const Center(
                          child: Text("Airline Tickets"),
                        )),
                    /**
                     * Hotel 
                     * */
                    Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(AppLayout.getWidth(10))),
                            color: Colors.grey.shade100),
                        child: const Center(
                          child: Text("Hotels"),
                        ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
