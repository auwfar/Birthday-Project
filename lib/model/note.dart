import 'package:flutter/material.dart';

class Note {
  String title;
  String content;
  Color color;

  Note({required this.title, required this.content, required this.color});
}

var notes = [
  Note(title: "1/4 Abad", content: "Selamat Ulang tahun Sayangg, Udah 25 tahun aja kamu hidup di dunia ini yaaa, udah seperempat abad. Semoga di umur 25 tahun ini kamu makin sehatt, makin banyak rejekii, semuanya makin lancarrr. berkahh umur kamuuu dan panjang umur dalam kebaikann", color: Color(0xFFFFDAB9)),
  Note(title: "Terbaik", content: "Terimakasih banyakk udah selalu melakukan yang terbaik di segala hal, di semua peran yang kamu punya selama ini", color: Color(0xFFFFFACD)),
  Note(title: "Keluarga", content: "Menjadi anak yang baikk buat mamah papah, selalu mikirin apapun yang terbaik buat mereka, berbakti sama mereka, jadi kebanggaan dan selalu bantu merekaa di kondisi apapun", color: Color(0xFF87CEFA)),
  Note(title: "Kakak", content: "Kamu juga menjadi kakak yang baikk, yang selalu perhatian sama adek2 kamuu, selalu berusaha membantu mereka untuk bisa berkembang dengan sangat baik, jadi kakak yang sangat sayang sama adek2 kamu, you are the besttt sister ever 💜", color: Color(0xFFE6E6FA)),
  Note(title: "Teman", content: "Kamu juga menjadi teman yang sangat supportif buat temen2 kamu, bisa menjaga silaturahmi kamu selama ini itu udah luar biasaaa. aku sebagai orang yang selalu berusaha jaga silaturahmi sama temenku, sangat apresiasi apa yang kamu lakukann", color: Color(0xFFFFB6C1)),
  Note(title: "Pasangan", content: "Kamu juga sudah menjadi pasangan yang sangatt dabestooo, pas aku sakit kamu selalu rawat akuu, jadi konsultan kesehatankuuu, selalu support sama apapun yang aku lakukan. mau kenalan sama temen2ku. nemenin aku buat melakukan apa yang aku suka. selalu make sure aku baik2 aja. mau ngertiin aku di segala kondisi. semuanya bisa aku rasakan. ngga perlu banyak kata yang aku ucapkan. aku cuman mau bilang kalo aku sangat beruntung bisa sama kamu sampek sekarang, Love youu sayangg 💜", color: Color(0xFF98FF98)),
  Note(title: "Overthinking", content: "Aku berharap kamu tidak banyak overthinking lagi yaa, kamu hebat banget udah selalu melakukan apapun yang terbaik, jadi kamu harus bangga sama kamu yang sekarang", color: Color(0xFFF08080)),
  Note(title: "Nangis", content: "Jangan banyak nangis lagii, kamu udah banyak overthinking sampek nangis sendiri, dipendem sendiri, kamu berhak bahagiaa, kamu berhak buat makin bahagiaa setelah ini", color: Color(0xFFB0E0E6)),
  Note(title: "Hepiii", content: "Aku suka kamu yang tidak overthinking dan selalu hepiii, Aku suka senyum kamu pas kamu ngga ada beban pikiran, Kamu makin cantikk kalo kamu ngga banyak pikiran sayangg", color: Color(0xFFD3D3D3)),
  Note(title: "Senyum", content: "Semoga di seperempat abad umur kamu ini, kamu bisa makin banyak tersenyum yaa sayanggg. semuanya dilancarinnn dan ngga ada kendala apapun 💜", color: Color(0xFFFFDAB5)),
];