import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_matchmaking_system/pages/show.dart';

class AddPhotoPage extends StatefulWidget {
  const AddPhotoPage({super.key});

  @override
  State<AddPhotoPage> createState() => _AddPhotoPageState();
}

class _AddPhotoPageState extends State<AddPhotoPage> {
  File? pickedImage;
  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Add Photos",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Atleast two photos to continue",
              style: TextStyle(color: Colors.black.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  pickedImage != null
                      ? Image.file(
                          pickedImage!,
                          width: 80,
                          height: 125,
                          fit: BoxFit.cover,
                        )
                      : imagebox(),
                  Positioned(
                      bottom: 3,
                      right: 2,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            imagePickerOption();
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                      ))
                ]),
                const SizedBox(
                  width: 10,
                ),
                Stack(children: [
                  pickedImage != null
                      ? Image.file(
                          pickedImage!,
                          width: 80,
                          height: 125,
                          fit: BoxFit.cover,
                        )
                      : imagebox(),
                  Positioned(
                      bottom: 3,
                      right: 2,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            imagePickerOption();
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                      ))
                ]),
                const SizedBox(
                  width: 10,
                ),
                Stack(children: [
                  pickedImage != null
                      ? Image.file(
                          pickedImage!,
                          width: 80,
                          height: 125,
                          fit: BoxFit.cover,
                        )
                      : imagebox(),
                  Positioned(
                      bottom: 3,
                      right: 2,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            imagePickerOption();
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                      ))
                ]),
              ],
            ),
            // SizedBox(
            //     height: 300,
            //     width: MediaQuery.of(context).size.width * 0.78,
            //     child: GridView.builder(
            //         gridDelegate:
            //             const SliverGridDelegateWithMaxCrossAxisExtent(
            //                 maxCrossAxisExtent: 120,
            //                 childAspectRatio: 2 / 3,
            //                 crossAxisSpacing: 20,
            //                 mainAxisSpacing: 20),
            //         itemCount: 6,
            //         itemBuilder: (BuildContext ctx, index) {
            //           return Stack(children: [
            //             SizedBox(
            //               height: 125,
            //               width: 80,
            //               child: pickedImage != null
            //                   ? Image.file(
            //                       pickedImage!,
            //                       height: 125,
            //                       width: 80,
            //                       fit: BoxFit.cover,
            //                     )
            //                   : Container(
            //                       alignment: Alignment.center,
            //                       decoration: BoxDecoration(
            //                         color: const Color(0xffD9D8D8),
            //                         border: Border.all(width: 1),
            //                       ),
            //                     ),
            //             ),
            //             Positioned(
            //                 bottom: 0,
            //                 right: 0,
            //                 child: GestureDetector(
            //                   onTap: () {
            //                     imagePickerOption();
            //                   },
            //                   child: Container(
            //                     height: 22,
            //                     width: 22,
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                     child: const Center(
            //                       child: Icon(
            //                         Icons.add,
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ),
            //                 )),
            //           ]);
            //         })),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: 280,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B2C43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const ShowingPage();
                        },
                      ));
                    },
                    child: const Text(
                      "Continue",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imagebox() {
  return Container(
    height: 125,
    width: 80,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: const Color(0xffD9D8D8),
      border: Border.all(width: 1),
    ),
  );
}
