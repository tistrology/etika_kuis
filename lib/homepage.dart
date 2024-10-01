import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'detail_order.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang, $username'),
        backgroundColor: Colors.green,
        actions: [
          TextButton(
            onPressed: () {
              // Log out and navigate back to login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                color: Colors
                    .white, // Ensure the text is visible against the green background
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.lightGreen[100],
              child: ListTile(
                title: Text("Apa itu bank sampah keliling?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailOrderPage()),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: scheduleList.length,
                itemBuilder: (context, index) {
                  final schedule = scheduleList[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Image.network(schedule.imageUrl,
                          width: 50, height: 50),
                      title: Text(schedule.wasteBankName,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                          '${schedule.coverageArea} \n${schedule.implementationDate} (${schedule.startTime} - ${schedule.endTime})'),
                      isThreeLine: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
