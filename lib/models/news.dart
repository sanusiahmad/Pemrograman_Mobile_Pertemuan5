class News {
  int id, likeCount;
  String title, author, banner, date, desc;

  News(
      {required this.id,
      required this.likeCount,
      required this.title,
      required this.author,
      required this.banner,
      required this.date,
      required this.desc});
}

var newsList = [
  News(
      id: 0,
      likeCount: 200,
      title:
          "Saling Serang Mahfud dan Benny K Harman soal Transaksi Janggal: Singgung Wewenang hingga Isu Singkirkan Menkeu",
      date: "22 Feb 2023",
      author: "Fitria Chusna Farisa",
      banner:
          "https://asset.kompas.com/crops/_CTjjwJoanZLaP-XPgp5r0UDpyM=/0x0:0x0/750x500/data/photo/2023/03/29/6423f232e7df7.jpg",
      desc:
          'Menteri Koordinator Bidang Politik, Hukum, dan Keamanan (Menko Polhukam) Mahfud MD dan anggota Komisi III DPR RI Fraksi Demokrat  "saling serang" soal kabar dugaan transaksi janggal senilai Rp 349 triliun di lingkungan Kementerian Keuangan (Kemenkeu).'),
  News(
      id: 1,
      likeCount: 200,
      title: "MotoGP: Marc Marquez Tetap Kena Hukuman meski Absen di Argentina",
      date: "Selasa, 28 Mar 2023",
      author: "Rifqi Ardita Widianto",
      banner:
          "https://akcdn.detik.net.id/community/media/visual/2023/03/27/marc-marquez-2_169.jpeg?w=700&q=90",
      desc:
          "Marc Marquez dijatuhi double long lap penalty pada MotoGP Argentina, usai menabrak pebalap RNF Miguel Oliveira di MotoGP Portugal, Minggu (26/3/2023) lalu. Tapi hukuman itu pada prosesnya hangus."),
  News(
      id: 2,
      likeCount: 202,
      title:
          "4 Cara Menunjukkan Bahwa Anda Menyukai Seseorang Tanpa Mengatakannya",
      date: "2023-03-27",
      author: "Camelia",
      banner:
          "https://cdn1-production-images-kly.akamaized.net/_-sHcwCCvVu3OkTzZWwDMcW8i2E=/0x144:1920x1226/640x360/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4061700/original/092684900_1655962004-couple-geacfe3163_1920.jpg",
      desc:
          "Setiap individu tentu pernah menemukan orang yang mereka sukai dan menarik perhatian. Begitupun dengan Anda. Anda tentu pernah merasa tertarik pada seseorang tetapi tidak berani secara langsung mengungkapkan rasa suka itu kepada mereka."),

];
