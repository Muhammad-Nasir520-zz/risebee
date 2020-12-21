
class MarketPlaceModel{
  String image;
  String name;

  MarketPlaceModel({this.image, this.name});
}

List<MarketPlaceModel> marketplace = [
  MarketPlaceModel(
    image: 'assets/images/home_screen_images/rise_gold.png',
    name: 'riseGold',
  ),
  MarketPlaceModel(
    image: 'assets/images/marketplace_screen/bags.png',
    name: 'Bags',
  ),
  MarketPlaceModel(
    image: 'assets/images/marketplace_screen/compaigns.png',
    name: 'Campaigns',
  ),
  MarketPlaceModel(
    image: 'assets/images/marketplace_screen/my_invest.png',
    name: 'MyInvest',
  ),
  MarketPlaceModel(
    image: 'assets/images/marketplace_screen/impact.png',
    name: 'Impact',
  ),
  MarketPlaceModel(
    image: 'assets/images/marketplace_screen/donations.png',
    name: 'Donations',
  )
];