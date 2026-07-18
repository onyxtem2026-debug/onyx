import 'package:flutter/material.dart';

class CreateLiveScreen extends StatelessWidget {
  const CreateLiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,
        title: const Text(
          "Create Live",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [

          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Live Title",
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 18),

          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Subtitle (Optional)",
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 18),

          const TextField(
            maxLines: 3,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Description",
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 25),

          ListTile(
            leading: const Icon(Icons.image,color: Colors.white),
            title: const Text(
              "Choose Cover",
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.people,color: Colors.white),
            title: const Text(
              "Invite Guests",
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.schedule,color: Colors.white),
            title: const Text(
              "Schedule Live",
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios,color: Colors.grey),
            onTap: (){},
          ),

          const Divider(color: Colors.white24),

          SwitchListTile(
            value: true,
            onChanged: (_){},
            activeColor: Color(0xFF7C4DFF),
            title: const Text(
              "Enable Gifts",
              style: TextStyle(color: Colors.white),
            ),
          ),

          SwitchListTile(
            value: true,
            onChanged: (_){},
            activeColor: Color(0xFF7C4DFF),
            title: const Text(
              "Enable Support",
              style: TextStyle(color: Colors.white),
            ),
          ),

          SwitchListTile(
            value: true,
            onChanged: (_){},
            activeColor: Color(0xFF7C4DFF),
            title: const Text(
              "Enable Tap Counter",
              style: TextStyle(color: Colors.white),
            ),
          ),

          SwitchListTile(
            value: true,
            onChanged: (_){},
            activeColor: Color(0xFF7C4DFF),
            title: const Text(
              "Notify Followers",
              style: TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 60,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7C4DFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: (){},
              icon: const Icon(Icons.live_tv),
              label: const Text(
                "GO LIVE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
