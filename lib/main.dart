import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// id.wikipedia.org/wiki/Daftar_ilmuwan_Muslim

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ilmuan Islam"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "Muḥammad bin Mūsā al-Khawārizmī",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/1983_CPA_5426_%281%29.png/250px-1983_CPA_5426_%281%29.png",
              "Muḥammad bin Mūsā al-Khawārizmī (bahasa Arab: محمد بن موسى الخوارزمي‎) adalah seorang ahli dalam bidang matematika, astronomi, astrologi, dan geografi yang berasal dari Persia. Lahir sekitar tahun 780 di Khwārizm (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Baghdad. Hampir sepanjang hidupnya, ia bekerja sebagai dosen di Sekolah Kehormatan di Baghdad yang didirikan oleh Khalifah Bani Abbasiyah Al-Ma'mun, tempat ia belajar ilmu alam dan matematik, termasuk mempelajari terjemahan manuskrip Sanskerta dan Yunani\nBuku pertamanya, al-Jabar, adalah buku pertama yang membahas solusi sistematik dari linear dan notasi kuadrat. Sehingga ia disebut sebagai Bapak Aljabar. Al-Khwārizmī juga berperan penting dalam memperkenalkan angka Arab melalui karya Kitāb al-Jam’a wa-l-tafrīq bi-ḥisāb al-Hind yang kelak diadopsi sebagai angka standar yang dipakai di berbagai bahasa serta kemudian diperkenalkan sebagai Sistem Penomoran Posisi Desimal di dunia Barat pada abad ke 12. Ia merevisi dan menyesuaikan Geografi Ptolemeus sebaik mengerjakan tulisan-tulisan tentang astronomi dan astrologi.\n Kontribusinya tak hanya berdampak besar pada matematika, tapi juga dalam kebahasaan. Kata \"aljabar\" berasal dari kata al-Jabr, satu dari dua operasi dalam matematika untuk menyelesaikan notasi kuadrat, yang tercantum dalam bukunya. Kata algorisme dan algoritma diambil dari kata algorismi, Latinisasi dari namanya. Namanya juga di serap dalam bahasa Spanyol, guarismo, dan dalam bahasa Portugis, algarismo bermakna digit."),
          _createPageItemUI(
              "Umar Khayyām",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg/220px-033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg",
              "'Umar Khayyām (18 Mei 1048 – 4 Desember 1131, dalam bahasa Persia عمر خیام), dilahirkan di Nishapur, Iran. Nama aslinya adalah Ghiyātsuddin Abulfatah 'Umar bin Ibrahim Khayyāmi Nisyābūri (غياث الدين ابو الفتح عمر بن ابراهيم خيام نيشابوري). Khayyām berarti \"pembuat tenda\" dalam bahasa Persia."),
          _createPageItemUI(
              "Ibnu Sina",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg/220px-Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg",
              "Ibnu Sina (980-1037) dikenal juga sebagai \"Avicenna\" di dunia Barat adalah seorang filsuf, ilmuwan, dan dokter kelahiran Persia (sekarang Iran). Ia juga seorang penulis yang produktif yang sebagian besar karyanya adalah tentang filosofi dan kedokteran. Bagi banyak orang, dia adalah \"Bapak Kedokteran Modern\". Karyanya yang sangat terkenal adalah al-Qānūn fī aṭ-Ṭibb yang merupakan rujukan di bidang kedokteran selama berabad-abad.\nIbnu Sina bernama lengkap Abū ‘Alī al-Husayn bin ‘Abdullāh bin Sīnā (Persia ابوعلى سينا Abu Ali Sina, Arab : أبو علي الحسين بن عبد الله بن سينا). Ibnu Sina lahir pada 980 di Afsyahnah daerah dekat Bukhara, sekarang wilayah Uzbekistan dan meninggal bulan Juni 1037 di Hamadan, Persia (Iran).\nDia adalah pengarang dari 450 buku pada beberapa pokok bahasan besar. Banyak di antaranya memusatkan pada filosofi dan kedokteran. \" George Sarton menyebut Ibnu Sina \"ilmuwan paling terkenal dari Islam dan salah satu yang paling terkenal pada semua bidang, tempat dan waktu\". Karyanya yang paling terkenal adalah Kitab Penyembuhan dan Qanun Kedokteran (Al-Qanun fi At Tibb)."),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String nama, String gambar, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(image: NetworkImage(gambar), height: 300.0, fit: BoxFit.cover),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              nama,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
