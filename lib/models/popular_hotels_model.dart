class PopularHotels {
  String image;
  String name;
  String address;
  String description;

  PopularHotels({this.image, this.name, this.address, this.description});
}

List<PopularHotels> listPopular = [
  PopularHotels(
      image: "https://cf.bstatic.com/images/hotel/max500/989/9895281.jpg",
      name: "Grand Zuri Hotel Padang",
      address:
          "Jl. MH Thamrin No. 27 , Padang Selatan, Padang, Sumatera Barat, Indonesia, 25133",
      description:
          "Less than 1 km from the Ganting Grand Mosque, this striking, contemporary hotel is 10 km from Pantai Air Manis beach and 24 km from Minangkabau International Airport.Chic, modern rooms with wooden floors feature free Wi-Fi, flat-screen TVs, and tea and coffeemaking facilities, as well as safes and minibars. Suites add bathtubs, living/dining areas and desks.Complimentary perks include parking, and a breakfast buffet served in a stylish restaurant. There's also a fitness center, a spa and a swanky bar, as well as a prayer room and a conference center."),
  PopularHotels(
    image:
        "https://media-cdn.tripadvisor.com/media/photo-s/0a/ab/c9/04/daima-hotel-padang.jpg",
    name: "Daima Hotel Padang",
    address:
        "Jl. Jend. Sudirman No.17, Kp. Jao, Kec. Padang Bar., Kota Padang, Sumatera Barat 25112",
    description:
        "On a residential street in the city center, this informal hotel is 2 km from both Taman Budaya adventure center and the Grand Mosque of Ganting, and 9 km from the lively Pantai Air Manis beach. The warmly decorated rooms feature free Wi-Fi, flat-screen TVs and minifridges, plus tea and coffeemakers. All provide sitting areas. Family rooms sleep up to 4 guests. Room service is available 24/7. There's a down-to-earth restaurant, and a lounge featuring live music. Other amenities include an outdoor pool, a spa and a fitness center. Breakfast and parking are offered.",
  ),
];
