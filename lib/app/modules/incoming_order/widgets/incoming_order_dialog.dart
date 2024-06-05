// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/action_button.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/customer_information.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/header_title.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/order_widget.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/quantity_manage.dart';

class IncomingOrderDialog extends StatefulWidget {
  const IncomingOrderDialog({super.key});

  @override
  _IncomingOrderDialogState createState() => _IncomingOrderDialogState();
}

class _IncomingOrderDialogState extends State<IncomingOrderDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
        scale: _scaleAnimation,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: 600,
            height: 900,
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Builder(builder: (context) {
                  return Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20)),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('images/logo.png'),
                                    ManageQuantityCommonWidget(
                                      qunatity: '1',
                                      onadd: () {},
                                      onremove: () {},
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                const HeaderTitle(
                                    title: 'In Store Customer', trailing: ''),
                                const CustomerInformation(),
                                const SizedBox(height: 10),
                                const HeaderTitle(
                                    title: 'Order Items', trailing: '16 items'),
                                Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return const OrderWidget();
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total £163.90',
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: headingTextColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          ActionButtonOrder(
                                              textColors: Colors.black,
                                              name: 'Reject',
                                              colors: Colors.grey.shade200,
                                              width: 100),
                                          const SizedBox(width: 10),
                                          const ActionButtonOrder(
                                              textColors: Colors.white,
                                              name: 'Accept',
                                              colors: Color(0xffCC3333),
                                              width: 200),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ));
                })),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
