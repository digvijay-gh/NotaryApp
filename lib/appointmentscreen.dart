import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notary_app/utilitywidgets.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointments"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              NewAppointmentCard(),
              SpaceWidget(12),
              UpcomingAppointmentCard()
            ],
          ),
        ),
      ),
    );
  }
}

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          AppointmentDetailsWidget(),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Color(0xff8a97d2),
            child: Center(
                child: Text(
              "View location on map",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ],
      ),
    );
  }
}

class NewAppointmentCard extends StatelessWidget {
  const NewAppointmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          AppointmentDetailsWidget(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade500,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is Real Estate Signing"),
                SpaceWidget(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'Reject',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(MediaQuery.of(context).size.width / 3.5, 32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          primary: const Color(0xFFfbb3ae)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      child: const Text(
                        'Accept',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(MediaQuery.of(context).size.width / 3.5, 32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          primary: const Color(0xFF8a97d2)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppointmentDetailsWidget extends StatelessWidget {
  const AppointmentDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.location,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      "In Person Signing",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "3.2 Mi",
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      color: Colors.black,
                      width: 1,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      height: 12,
                    ),
                    Text(
                      "45 mins",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SpaceWidget(2),
          MailAndCallWidget(
            title: "Signer Name",
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          SpaceWidget(4),
          Text(
            "Customer Information:",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SpaceWidget(4),
          MailAndCallWidget(
            title: "Customer First Name + Last Name",
            titleTextStyle: TextStyle(fontSize: 12),
          ),
          SpaceWidget(4),
          Text(
            "company name",
            style: TextStyle(fontSize: 12),
          ),
          SpaceWidget(6),
          Text(
            "Time: Tuesday,12/09/1220 2 5:30 PM",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
