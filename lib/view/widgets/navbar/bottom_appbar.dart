import 'package:flutter/material.dart';

class BottomAppbarWidget extends StatelessWidget {
  const BottomAppbarWidget({super.key, required this.keys});
  final List<GlobalKey> keys;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Text("Madhan"),
            const Spacer(),
            IconButton(
              iconSize: 30.0,
              padding: const EdgeInsets.only(left: 28.0),
              icon: const Icon(Icons.dashboard_outlined),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return Container(
                      margin: const EdgeInsets.only(
                        bottom: 50,
                        left: 20,
                        right: 20,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BottomAppBarButton(
                                label: 'About',
                                pageKey: keys[1],
                              ),
                              BottomAppBarButton(
                                label: 'Experience',
                                pageKey: keys[2],
                              ),
                              BottomAppBarButton(
                                label: 'Work',
                                pageKey: keys[3],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BottomAppBarButton(
                                label: 'Contact',
                                pageKey: keys[4],
                              ),
                              BottomAppBarButton(
                                label: 'Resume',
                                pageKey: keys[4],
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.close))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomAppBarButton extends StatelessWidget {
  const BottomAppBarButton(
      {super.key, required this.label, required this.pageKey});
  final String label;
  final GlobalKey pageKey;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Scrollable.ensureVisible(pageKey.currentContext!,
          duration: const Duration(seconds: 1)),
      child: Text(label),
    );
  }
}
