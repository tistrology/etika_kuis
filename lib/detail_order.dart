import 'package:flutter/material.dart';

class DetailOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Bank Sampah'),
      ),
      body: Column(
        children: [
          Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTzGEtouOS96vERFyozyE2FYvfOzseYNC3MA&s'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Bank Sampah Keliling adalah inisiatif yang bertujuan untuk mengumpulkan, memilah, dan mengelola sampah dari masyarakat secara efisien dan ramah lingkungan. Program ini beroperasi dengan cara berkeliling ke area pemukiman untuk mengumpulkan sampah, memberikan kemudahan bagi masyarakat untuk membuang sampah terpisah, terutama yang dapat didaur ulang. Selain pengumpulan, tim Bank Sampah Keliling juga membantu masyarakat dalam memisahkan sampah organik dan anorganik, serta meningkatkan kesadaran akan pentingnya pengelolaan sampah yang baik. Banyak dari program ini menerapkan sistem reward, di mana warga yang menyerahkan sampah terpilah akan mendapatkan imbalan, seperti uang atau barang, sebagai insentif untuk berpartisipasi aktif.Sampah yang dikumpulkan kemudian diproses untuk didaur ulang, memberikan manfaat ekonomi bagi masyarakat dan lingkungan dengan mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir. Selain itu, program ini juga membangun solidaritas dan kesadaran komunitas terhadap pentingnya menjaga kebersihan lingkungan.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali ke Beranda'),
          ),
        ],
      ),
    );
  }
}
