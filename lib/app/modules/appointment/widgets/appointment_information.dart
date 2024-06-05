import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';

import '../controllers/appointment_controller.dart';
import '../views/appointment_view.dart';

class AppointmenrInformationPage extends StatelessWidget {
  const AppointmenrInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      return Container(
        decoration: allcontainerDecoration,
        child: ListView(
          children: const [
            Informationtile(text: 'Appointment Information'),
            CustomListtile(
                title: '11/18/2023', iconData: Icons.date_range_outlined),
            CustomListtile(
                title: '10:00 AM - 10:30 AM', iconData: Icons.watch_later),
            CustomListtile(
                title: 'Hair Cut', iconData: Icons.cleaning_services_outlined),
            padding20,
            Informationtile(text: 'Customer Information'),
            padding10,
            CustomerProfileTile(),
            padding15,
            CustomerInformationListtile(
                header: 'Date Of Birth:', text: '08/05/1980'),
            CustomerInformationListtile(header: 'Gender:', text: 'Male'),
            CustomerInformationListtile(
                header: 'Perious Visit:', text: '2 weeks ago'),
            padding20,
            Informationtile(text: 'Contacts'),
            CustomListtile(title: '+1-202-555-0194', iconData: Icons.phone),
            CustomListtile(
                title: 'dauglas.schneider@gmail.com', iconData: Icons.email),
            CustomListtile(
                title: '615 Carter Roads Suite 286', iconData: Icons.home),
          ],
        ),
      );
    });
  }
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
///////////////// Sub Widgets  //////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key, required this.title, required this.iconData});
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        child: Row(
          children: [
            padding20,
            CircleAvatar(
              backgroundColor: Mycolors.appColor.withOpacity(0.30),
              child: Center(
                child: Icon(
                  iconData,
                  color: Mycolors.appColor,
                ),
              ),
            ),
            padding10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Informationtile extends StatelessWidget {
  const Informationtile({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class CustomerInformationListtile extends StatelessWidget {
  const CustomerInformationListtile(
      {super.key, required this.header, required this.text});
  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        padding20,
        Text(
          header,
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 18),
        ),
        padding20,
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        )
      ],
    );
  }
}

class CustomerProfileTile extends StatelessWidget {
  const CustomerProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          padding20,
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/hair.png'),
          ),
          padding10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dauglas Schneider',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                TextButton(onPressed: () {}, child: const Text('View Profile'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
