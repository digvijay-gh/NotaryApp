import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notary_app/utilitywidgets.dart';

class LeadScreen extends StatelessWidget {
  const LeadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                LeadDetailsWithCompanyDetails(),
                SpaceWidget(12),
                LeadDetailsWithoutCompanyDetails(),
                SpaceWidget(12),
                SignerDetailsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LeadDetailsWithCompanyDetails extends StatelessWidget {
  const LeadDetailsWithCompanyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        CupertinoIcons.bag,
                        color: Colors.blue,
                        size: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Customer",
                        style: TextStyle(
                          fontSize: 12,
                        ),
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
            SpaceWidget(12),
            MailAndCallWidget(
              title: "Lead Name",
              titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            SpaceWidget(16),
            Text(
              "Associated with",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SpaceWidget(4),
            MailAndCallWidget(
              title: "Company Name",
              titleTextStyle: TextStyle(fontSize: 14),
            ),
            SpaceWidget(4),
            Text(
              "Address : Company Address",
              style: TextStyle(fontSize: 12),
            ),
            SpaceWidget(6),
            Text(
              "Created At: Time",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadDetailsWithoutCompanyDetails extends StatelessWidget {
  const LeadDetailsWithoutCompanyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  CupertinoIcons.bag,
                  color: Colors.blue,
                  size: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Customer",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SpaceWidget(12),
            MailAndCallWidget(
              title: "Lead Name",
              titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            SpaceWidget(16),
            Text(
              "Associated with",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SpaceWidget(4),
            Text(
              "No Company Details",
            ),
            SpaceWidget(12),
            Text(
              "Created At: Time",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class SignerDetailsCard extends StatelessWidget {
  const SignerDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person_pin,
                  color: Colors.blue,
                  size: 24,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Signer",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SpaceWidget(12),
            MailAndCallWidget(
              title: "Signer Name + Last Name",
              titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            SpaceWidget(12),
            Text(
              "Created At: Time",
              style: TextStyle(fontSize: 12),
            ),
            SpaceWidget(8)
          ],
        ),
      ),
    );
  }
}
