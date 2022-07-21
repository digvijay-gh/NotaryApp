import 'package:flutter/material.dart';
import 'package:notary_app/appointmentscreen.dart';
import 'package:notary_app/utilitywidgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceWidget(24),
                Text(
                  "Good Morning,",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SpaceWidget(16),
                Text(
                  "Jennifer",
                  style: TextStyle(fontSize: 18),
                ),
                SpaceWidget(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Appointments",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SpaceWidget(8),
                TodayAppointmentList(),
                SpaceWidget(16),
                Text(
                  "Pending requests",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TodayAppointmentList extends StatelessWidget {
  const TodayAppointmentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 8,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      contentPadding: EdgeInsets.zero,
                      children: [
                        NewAppointmentCard(),
                      ],
                    );
                  },
                );
              },
              child: TodayAppointmentCard(),
            ),
          );
        },
      ),
    );
  }
}

class TodayAppointmentCard extends StatelessWidget {
  const TodayAppointmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 4),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text("Martin Lawrence"),
                subtitle: Text("10:30AM"),
                trailing: Icon(
                  Icons.location_on_outlined,
                  size: 28,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Expanded(
              flex: 4,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 4, right: 20),
                title: Text(
                  "Status",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                subtitle: Text(
                  "Arrived At Appointment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ),
                trailing: Text(
                  "Update\nStatus",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
