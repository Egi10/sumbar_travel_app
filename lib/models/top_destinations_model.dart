class TopDestinationModel {
  String urlImage;
  String name;
  String harga;
  double start;
  String introduce;

  TopDestinationModel(
      {this.urlImage, this.name, this.harga, this.start, this.introduce});
}

List<TopDestinationModel> topDestination = [
  TopDestinationModel(
      urlImage:
          'https://awsimages.detik.net.id/content/2018/10/03/1025/img_20181003164528_5bb48fb8e569a.jpg',
      name: 'Pasumpahan Island',
      harga: "Rp. 1.000.000",
      start: 4.0,
      introduce:
          'Pasumpahan Island is in the waters of Bungus Teluk Kabung District, Padang City, West Sumatra. The beauty of the sea makes this island look beautiful. That’s why many local and foreign tourists—especially snorkelling lovers—visit this island. On the north side of the island, a 100-meter hill can be the best spot to view the island and the vast ocean. With five-hectare areas, the island offers clear water and three-coloured gradations: limpid on the beach, slightly greenish to the middle of the beach, and bluish in the middle of the sea. The island has complete tourist facilities, such as places to relax, bathrooms, water sports rides, a camping ground, volleyball courts, and a mosque. Undoubtedly, your vacation on this tiny island with blue shades will be exciting.'),
  TopDestinationModel(
      urlImage:
          'https://backpackerjakarta.com/wp-content/uploads/2016/09/TAMAN-NASIONAL-KERINCI-SEBAT2.jpg',
      name: 'Taman Nasional Kerinci Seblat',
      harga: "Rp. 2.000.000",
      start: 4.5,
      introduce:
          'Taman Nasional Kerinci Seblat is the largest national park with an area of 500 hectares, spread over four provinces: West Sumatra, Jambi, Bengkulu, and South Sumatra. This national park has a diverse topography and presents beautiful panoramas, such as valleys, mountains, forests, and lakes. The diversity of flora and fauna is one of the reasons many travellers visit this tourist attraction. You can see protected wildlife and other forest ecosystems. Besides, other interesting places complete the beauty of this region, such as swamps and waterfalls.'),
  TopDestinationModel(
      urlImage: 'https://tonghanter.harianterbit.com/gbr_artikel/_3_2.jpg',
      name: 'Ngarai Sianok',
      harga: "Rp. 2.000.000",
      start: 4.5,
      introduce:
          'Sianok Canyon, with its charming steep valley, is located near the border of Agam Regency and Bukittinggi City. Flanked by steep hills facing each other, the canyon presents a beautiful and charming scenery. Therefore, Sianok canyon is a must-visit West Sumatra’s attraction. The valleys are full of verdant rice fields; those are faults separating Sumatra Island into two elongated parts. Along the faults, there are winding valleys with rivers flowing at the bottom. Due to its beauty, Ngarai Sianok was awarded by Padang Tourism Award 2007.'),
  TopDestinationModel(
      urlImage:
          'https://www.rasio.co/wp-content/uploads/2019/07/Suasana-di-objek-wisata-Padang-Mengatas-Payakumbuh.jpg',
      name: 'Padang Mangateh',
      harga: "Rp. 1.500.000",
      start: 4.5,
      introduce:
          'Located at the foot of Mount Sago, Padang Mangateh is a special place used for breeding superior livestock and forage. The distinctive feature of Padang Mangateh is the vast green grassland, covering about 280 hectares. The cow is one kind of the animals raised here; it is allowed to live on the prairies. You don’t need to go to New Zealand to enjoy the expanse of beautiful green fields since this village is similar to Hobbiton Village in New Zealand.'),
];
