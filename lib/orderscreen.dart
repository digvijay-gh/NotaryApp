import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notary_app/utilitywidgets.dart';

TextStyle greyText = TextStyle(
  color: Color.fromARGB(255, 142, 143, 142),
);
TextStyle titleStyle =
    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5);

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AcceptAndRejectButtons(),
            SpaceWidget(12),
            SigningDetailsWidget(),
            SpaceWidget(12),
            LocationDistanceCard(),
            SigningLocationDetailsCard(),
            OrderInformationCard(),
            SignerDetailsOrderScreenCard(),
            TitleCompanyAndAgentInformationCard(),
          ],
        ),
      )),
    );
  }
}

class AcceptAndRejectButtons extends StatelessWidget {
  const AcceptAndRejectButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
            fixedSize: Size(MediaQuery.of(context).size.width / 3.5, 32),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            primary: Colors.red,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        ElevatedButton(
          child: const Text(
            'Accept',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width / 3.5, 32),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            primary: Colors.green,
          ),
        )
      ],
    );
  }
}

class SigningDetailsWidget extends StatelessWidget {
  const SigningDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
      child: Center(
        child: Text("This is Remote Signing"),
      ),
    );
  }
}

class LocationDistanceCard extends StatelessWidget {
  const LocationDistanceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(
          CupertinoIcons.location,
          size: 32,
        ),
        title: Row(
          children: [
            Text(
              "45 mins Drive from Home Address",
              style: TextStyle(fontSize: 14),
            ),
            Container(
              color: Colors.black,
              width: 1,
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 14,
            ),
            Text(
              "3.2 Mi",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class SigningLocationDetailsCard extends StatelessWidget {
  const SigningLocationDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.red,
                    size: 40,
                  ),
                  Expanded(
                    child: Center(
                      child: Text("Signing\nLocation",
                          style: greyText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
              flex: 3,
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: greyText.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SpaceWidget(8),
                    Text(
                        "1101, Long Road Avenue, Boulveyard Street, Las Vegas, Navada",
                        style: greyText),
                    SpaceWidget(16),
                    Text("Time: Jan 12, 4.45 PM"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderInformationCard extends StatelessWidget {
  const OrderInformationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(CupertinoIcons.doc_text),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Order Information",
                  style: titleStyle,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(Icons.corporate_fare)),
                      Text(
                        "This is Property Related Signing",
                      ),
                    ],
                  ),
                  SpaceWidget(12),
                  HeadingAndDetailsRow(
                    title: "Escrow for this file",
                    detail: "lorem lipsum dolor",
                  ),
                  SpaceWidget(12),
                  HeadingAndDetailsRow(
                    title: "Order Type",
                    detail: "Mobile(\$150)",
                  ),
                  SpaceWidget(12),
                  Text("Property Address", style: greyText),
                  SpaceWidget(12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                        "1101, Long Road Avenue, Boulveyard Street, Las Vegas, Navada",
                        style: greyText),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignerDetailsOrderScreenCard extends StatelessWidget {
  const SignerDetailsOrderScreenCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  CupertinoIcons.person_alt_circle_fill,
                  color: Colors.blue,
                  size: 28,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Signer Details",
                  style: titleStyle,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingAndDetailsWithIconRow(
                    title: "Signer name",
                    detail: "lorem lipsum dolo",
                    icon: Icon(CupertinoIcons.mail),
                  ),
                  SpaceWidget(12),
                  HeadingAndDetailsWithIconRow(
                    title: "Phone Number",
                    detail: "+702.530.2495",
                    icon: Icon(CupertinoIcons.phone_fill),
                  ),
                  SpaceWidget(8),
                  HeadingAndDetailsRow(
                    title: "Signer's Last name",
                    detail: "Lawrence",
                  ),
                  SpaceWidget(16),
                  Text("Address:", style: greyText),
                  SpaceWidget(8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Text(
                        "1101, Long Road Avenue, Boulveyard Street, Las Vegas, Navada",
                        style: greyText),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleCompanyAndAgentInformationCard extends StatelessWidget {
  const TitleCompanyAndAgentInformationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.list_alt,
                  size: 28,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Title Company &\nAgent Information",
                  style: titleStyle,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
              child: Column(
                children: [
                  HeadingAndDetailsRow(
                      title: "Closing Agent", detail: "Wells Fargo Home"),
                  SpaceWidget(8),
                  HeadingAndDetailsRow(
                      title: "CA First Name", detail: "Martin"),
                  SpaceWidget(8),
                  HeadingAndDetailsRow(
                      title: "CA Last Name", detail: "Lawrence"),
                  SpaceWidget(8),
                  HeadingAndDetailsWithIconRow(
                    title: "CA Phone Number",
                    detail: "+702.530.2495",
                    icon: Icon(CupertinoIcons.phone_fill),
                  ),
                  SpaceWidget(8),
                  HeadingAndDetailsWithIconRow(
                    title: "CA Email",
                    detail: "ashley@chase.com",
                    icon: Icon(CupertinoIcons.mail),
                  ),
                  SpaceWidget(8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// A Row with a FIELD TITLE and DETAIL in same line
class HeadingAndDetailsRow extends StatelessWidget {
  final String title;
  final String detail;
  const HeadingAndDetailsRow({
    Key? key,
    required this.title,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: greyText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            ":",
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            detail,
          ),
        ),
      ],
    );
  }
}

// A Row with a FIELD TITLE ,DETAIL and ICON in same line
class HeadingAndDetailsWithIconRow extends StatelessWidget {
  final String title;
  final String detail;
  final Icon icon;
  const HeadingAndDetailsWithIconRow({
    Key? key,
    required this.title,
    required this.detail,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: greyText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            ":",
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(
            detail,
          ),
        ),
        InkWell(
          child: icon,
        ),
        SizedBox(
          width: 12,
        )
      ],
    );
  }
}
