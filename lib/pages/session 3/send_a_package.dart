import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/widgets/custom_bottom_bar.dart';
import 'package:oech_app001/widgets/send_package.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({super.key});
  @override
  State<SendPackage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPackage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _othersController = TextEditingController();
  final TextEditingController _addressControllerDD = TextEditingController();
  final TextEditingController _countryControllerDD = TextEditingController();
  final TextEditingController _phoneControllerDD = TextEditingController();
  final TextEditingController _othersControllerDD = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        title:  Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          child: Text('Send a package',
          style: TextStyle(
            color: Color(0xffa3a3a3),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.only(top: 30, left: 25, right: 25) ,
        child: Column(
        children: [
               Column(
                children: [
                   Row(
                     children: [
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset('assets/images/s4_orig_detail.svg'),),
                      SizedBox(width: 10,),
                      Text(
                          'Origin Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                   SendPackageWidget(controller: _addressController, hintText: 'Address'),
                   SendPackageWidget(controller: _countryController, hintText: 'State,Country'),
                   SendPackageWidget(controller: _phoneController, hintText: 'Phone number'),
                   SendPackageWidget(controller: _othersController, hintText: 'Others'),
                   SizedBox(height: 25,),
                   Row(
                     children: [
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset('assets/images/s4_orig_detail.svg'),),
                      SizedBox(width: 10,),
                      Text(
                          'Destination Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                   SendPackageWidget(controller: _addressControllerDD, hintText: 'Address'),
                   SendPackageWidget(controller: _countryControllerDD, hintText: 'State,Country'),
                   SendPackageWidget(controller: _phoneControllerDD, hintText: 'Phone number'),
                   SendPackageWidget(controller: _othersControllerDD, hintText: 'Others'),
                   SizedBox(height: 25,),
                  Row(
                     children: [
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset('assets/images/s4_orig_detail.svg'),),
                      SizedBox(width: 10,),
                      Text(
                          'Package Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                   SendPackageWidget(controller: _addressController, hintText: 'Address'),
                   SendPackageWidget(controller: _countryController, hintText: 'State,Country'),
                   SendPackageWidget(controller: _phoneController, hintText: 'Phone number'),
                   SizedBox(height: 25),
                   Row(
                     children: [
                      // Container(
                      //   height: 18,
                      //   width: 18,
                      //   child: SvgPicture.asset('assets/images/s4_orig_detail.svg'),),
                      // SizedBox(width: 10,),
                      Text(
                          'Select delivery type',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                ],
              ),
              ]
        )
            ),
          ),
       
      
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
