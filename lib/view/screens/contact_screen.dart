import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_styles.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('What’s Next?', style: AppTextStyles.caption),
          const SizedBox(height: 10),
          const Text('Get In Touch', style: AppTextStyles.header),
          const SizedBox(height: 10),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.25),
            child:const Text(
                'Although I’m not currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!',
                textAlign: TextAlign.center,
                style: AppTextStyles.normal),
          ),
          const SizedBox(height: 25),
          ElevatedButton(onPressed: () {}, child: const Text('Say Hello'))
        ],
      ),
    );
  }
}
