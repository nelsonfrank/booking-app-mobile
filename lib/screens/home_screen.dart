import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Utils
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Gap(40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning!",
                              style: Styles.headingLineStyle3),
                          const Gap(
                            5,
                          ),
                          Text("Book Tickets", style: Styles.headingLineStyle1),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage("assets/images/logo.png"))),
                      )
                    ]),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headingLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flight", style: Styles.headingLineStyle2),
                    InkWell(
                        onTap: () {
                          print("You are tapped");
                        },
                        child: Text("View all",
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor))),
                  ],
                )
              ]),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: const [TicketView(), TicketView(), TicketView()],
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headingLineStyle2),
                  InkWell(
                      onTap: () {
                        print("You are tapped");
                      },
                      child: Text("View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor))),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: const [HotelScreen(), HotelScreen(), HotelScreen()],
              ),
            ),
            const Gap(25),

          ],
        ));
  }
}
