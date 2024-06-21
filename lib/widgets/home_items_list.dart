// barbar list


class BarbarModel {
  final String imageUrl;
  final String title;

  BarbarModel(this.imageUrl, this.title);
}

List<BarbarModel> barbarListItem = [
  BarbarModel('assets/barbar1.png', 'Name1'),
  BarbarModel('assets/barbar2.png', 'Name2'),
  BarbarModel('assets/barbar3.png', 'Name3'),
  BarbarModel('assets/barbar4.png', 'Name4'),
  BarbarModel('assets/barbar3.png', 'Name7'),
  BarbarModel('assets/barbar4.png', 'Name8'),
  BarbarModel('assets/barbar1.png', 'Name9'),
  BarbarModel('assets/barbar2.png', 'Name10'),
  BarbarModel('assets/barbar1.png', 'Name11'),
  BarbarModel('assets/barbar2.png', 'Name12'),
  BarbarModel('assets/barbar3.png', 'Name13'),
  BarbarModel('assets/barbar4.png', 'Name14'),
  BarbarModel('assets/barbar3.png', 'Name15'),
  BarbarModel('assets/barbar4.png', 'Name16'),
  BarbarModel('assets/barbar1.png', 'Name17'),
  BarbarModel('assets/barbar2.png', 'Name18'),
];

//salon list

class SalonModel {
  final String imageUrl;
  final String title;

  SalonModel(this.imageUrl, this.title);
}

List<SalonModel> salonListItem = [
  SalonModel('assets/image1.png', 'Salon1'),
  SalonModel('assets/image2.png', 'Salon2'),
  SalonModel('assets/image3.png', 'Salon3'),
  SalonModel('assets/image4.png', 'Salon4'),
  SalonModel('assets/image5.png', 'Salon5'),
  SalonModel('assets/image6.png', 'Salon6'),
  SalonModel('assets/image7.png', 'Salon7'),
];

// service list

class ServiceModel {
  final String imageUrl;
  final String title;

  ServiceModel(this.imageUrl, this.title);
}

List<ServiceModel> serviceListItem = [
  ServiceModel('assets/mypic.png', 'Hair Cut'),
  ServiceModel('assets/pic2.png', 'Hair Style'),
  ServiceModel('assets/pic3.png', 'Shaving'),
  ServiceModel('assets/pic4.png', 'Hair Washing'),
  ServiceModel('assets/pic5.png', 'Spa'),
  ServiceModel('assets/pic6.png', 'Facial'),
  ServiceModel('assets/pic7.png', 'Hair Dryer'),
  ServiceModel('assets/pic8.png', 'Nail Art'),
  ServiceModel('assets/pic9.png', 'Makeup'),
  ServiceModel('assets/pic10.png', 'Hair Coloring'),
];

//Luxury items

// barbar list

class LuxuryModel {
  final String imageUrl;
  final String title;
  final String location;

  final String timing;
  final String distance;

  LuxuryModel(
      this.imageUrl, this.title, this.location, this.timing, this.distance);
}

List<LuxuryModel> luxuryListItem = [
  LuxuryModel('assets/image1.png', 'NATURALS', 'Anna Nagar',
      '9:00 am - 9:00 pm', '10Km'),
  LuxuryModel('assets/image2.png', 'TONI&GUY', 'Koyembedu',
      '10:00 am - 9:00 pm', '16Km'),
  LuxuryModel('assets/image3.png', 'CHEAP&BEST', 'Koyembedu',
      '9:00 am - 6:00 pm', '18Km'),
      LuxuryModel('assets/image1.png', 'NATURALS', 'Anna Nagar',
      '9:00 am - 9:00 pm', '10Km'),
  LuxuryModel('assets/image2.png', 'TONI&GUY', 'Koyembedu',
      '10:00 am - 9:00 pm', '16Km'),
  LuxuryModel('assets/image3.png', 'CHEAP&BEST', 'Koyembedu',
      '9:00 am - 6:00 pm', '18Km'),
];



//  bottom bar serivice title list 


class ServiceBarModel {
  
  final String title;
 
 ServiceBarModel(
       this.title);
}

List<ServiceBarModel> serviceTitleListItem = [
  ServiceBarModel('Hair Cut'),
  ServiceBarModel('Hair Style'),
  ServiceBarModel('Shaving'),
  ServiceBarModel('Hair Washing'),
  ServiceBarModel('Spa'),
  ServiceBarModel('Facial'),
  ServiceBarModel('Hair Dryer'),
  ServiceBarModel('Nail Art'),
  ServiceBarModel('Makeup'),
  ServiceBarModel('Hair Coloring'),
  
     
  
];

// filter home

class Product {
  final String name;
  final String category;
  final double price;

  Product({
    required this.name,
    required this.category,
    required this.price,
});
}

 // add address form details save to address page: address model

 
  



class AddressModel {
  final String fullName;
  final String streeAddress;
  final String city;
  final String state;
  
  final String postalCode;

  AddressModel(this.fullName,
      this.streeAddress,
      this.city,
      this.state,
      
      this.postalCode);
}

List<AddressModel> addressListItem = [
  AddressModel('Kesav', '12/82, Mugapair west', 'Thirumangalam', 'Chennai','620003'),
  AddressModel('Easwar', '12/82, Mugapair west', 'Thirumangalam', 'Chennai','620005'),
  AddressModel('Ragav', '12/82, Mugapair west', 'Thirumangalam', 'Chennai','620002'),
  AddressModel('Chandry', '12/82, Mugapair west', 'Thirumangalam', 'Chennai','620001'),
  
];