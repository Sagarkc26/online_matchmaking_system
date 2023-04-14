import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/pages/show.dart';

class AddPhotoPage extends StatelessWidget {
  const AddPhotoPage({super.key});

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
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.78,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 120,
                            childAspectRatio: 2 / 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 6,
                    itemBuilder: (BuildContext ctx, index) {
                      return Stack(children: [
                        SizedBox(
                          height: 125,
                          width: 80,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9D8D8),
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 22,
                              width: 22,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ]);
                    })),
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
