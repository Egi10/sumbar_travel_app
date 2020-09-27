class PopularHotels {
  String image;
  String name;
  String address;

  PopularHotels({this.image, this.name, this.address});
}

List<PopularHotels> listPopular = [
  PopularHotels(
      image: "https://cf.bstatic.com/images/hotel/max500/989/9895281.jpg",
      name: "Grand Zuri Hotel Padang",
      address:
          "Jl. MH Thamrin No. 27 , Padang Selatan, Padang, Sumatera Barat, Indonesia, 25133"),
  PopularHotels(
      image:
          "https://media-cdn.tripadvisor.com/media/photo-s/0a/ab/c9/04/daima-hotel-padang.jpg",
      name: "Grand Zuri Hotel Padang",
      address:
          "Jl. MH Thamrin No. 27 , Padang Selatan, Padang, Sumatera Barat, Indonesia, 25133"),
];
