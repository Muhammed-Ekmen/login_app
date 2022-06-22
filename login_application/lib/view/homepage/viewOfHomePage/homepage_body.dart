import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/instance_manager.dart';
import 'package:login_application/view/homepage/service/get_airport_data.dart';
import 'package:login_application/view/homepage/controller/homepage_controller.dart';
import 'package:login_application/widgets/buildDivider.dart';
import 'package:login_application/widgets/buildTextFormField.dart';
import '../../../data/constants/color_constants.dart';

class HomePage_Body extends StatefulWidget {
  const HomePage_Body({Key? key}) : super(key: key);

  @override
  State<HomePage_Body> createState() => _HomePage_BodyState();
}

class _HomePage_BodyState extends State<HomePage_Body> {
  final HomePage_Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAirlineData(
        enteredSize: controller.findSizeController.text.isEmpty
            ? 1
            : int.parse(controller.findSizeController.text),
      ),
      builder: (context, data) {
        if (data.hasError) {
          return const Center(
            child: Text("Error..."),
          );
        } else if (data.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else {
          var items = data.data as List;
          return dataMethod(items);
        }
      },
    );
  }

  Column dataMethod(List<dynamic> items) {
    return Column(
      children: [
        textFieldUsage(),
        listingUsage(items),
      ],
    );
  }

  Expanded listingUsage(List<dynamic> items) {
    return Expanded(
      flex: 8,
      child: SizedBox(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            // return Text(items[0]["name"].toString());
            return cardUsage(items, index);
          },
        ),
      ),
    );
  }

  Expanded textFieldUsage() {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          BuildTextFormField(
              enteredHintText: "How Many Line Do You Wanna See At The Below?",
              enteredSuffixIcon: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.satellite,
                  color: appMainColor,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
              enteredBorderRadius: BorderRadius.circular(10),
              enteredKeyboardType: TextInputType.number,
              enteredFieldKey: controller.find_size_key,
              enteredController: controller.findSizeController),
          BuildDivider(),
        ],
      ),
    );
  }

  Padding cardUsage(List<dynamic> items, int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: appMainColor,
        borderRadius: BorderRadius.circular(10),
        child: ListTile(
          title: Text(
              "Airline:${items[index]["airline"][0]["name"]} \nName:${items[0]["name"]}"),
          subtitle: Text("ID:${items[index]["_id"]} "),
          leading: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
