import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sih/screens/institute_home_page/home_screen.dart';
import 'package:sih/styles/text_styles.dart';
import 'package:sih/widgets/custom_button.dart';
import 'package:sih/widgets/custom_formfield.dart';
import 'package:sih/widgets/custom_header.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _idController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _typeController = TextEditingController();
    TextEditingController _sizeController = TextEditingController();
    TextEditingController _areaController = TextEditingController();
    TextEditingController _yocController = TextEditingController();
    TextEditingController _roomsController = TextEditingController();
    TextEditingController _labsController = TextEditingController();
    TextEditingController _capacityController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _phnoController = TextEditingController();
    TextEditingController _addressController = TextEditingController();
    TextEditingController _stateController = TextEditingController();
    TextEditingController _pinController = TextEditingController();
    TextEditingController _cityController = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 9, 82),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            Container(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeader(
                        text: 'Registration Form',
                        onTap: () {
                          //TODO: Navigate to signup page
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Institution Id",
                      hintText: "Enter the institution id",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _idController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Institution Name",
                      hintText: "Enter the institution name",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Institution Type",
                      hintText: "Enter the institution type",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _typeController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Institution Size",
                      hintText: "Enter number of buildings",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _typeController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Institution Area",
                      hintText: "Enter the institution area(in acres)",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _areaController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Year Of Construction",
                      hintText: "Enter the year of construction",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _yocController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      '    Institution Location',
                      style: KTextStyle.textFieldHeading,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: AnimatedButton(
                        height: 40,
                        width: 130,
                        text: 'Get Location',
                        isReverse: true,
                        selectedTextColor: const Color.fromARGB(255, 2, 9, 82),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 197, 193, 251),
                          Color.fromARGB(255, 186, 202, 239),
                        ]),
                        borderRadius: 8,
                        borderColor: Color.fromARGB(255, 7, 7, 34),
                        borderWidth: 2,
                        onPress: () async {
                          late Position currentPosition;
                          Position position =
                              await Geolocator.getCurrentPosition(
                                  desiredAccuracy: LocationAccuracy.high);
                          currentPosition = position;
                          //Push latitude and longitude points to database
                          print(currentPosition);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Number of Rooms",
                      hintText: "Enter the number of rooms",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _roomsController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Number of Labs",
                      hintText: "Enter the number of labs",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _labsController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Capacity",
                      hintText: "Enter the capacity",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _capacityController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Phone number",
                      hintText: "Enter the institute phno",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _phnoController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Email",
                      hintText: "Enter the institute email",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Address",
                      hintText: "Enter the institute address",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 3,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _addressController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "State",
                      hintText: "Enter the institute state",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _stateController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "City",
                      hintText: "Enter the institute city",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _cityController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      headingText: "Pincode",
                      hintText: "Enter the ipincode",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      controller: _pinController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthButton(
                      onTap: () {
                        Navigator.pushNamed(context, HomeScreen.route);
                      },
                      text: 'Register',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
