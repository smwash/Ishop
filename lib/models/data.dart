import 'package:ishop/models/product_model.dart';

List<String> carouselBrands = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWkgH92CCY52JdU4dbSAKo5_ZfZZB7T8QSA6TBc48d0y15SqHcfFeINb6dwZj5osU_66s&usqp=CAU',
  'https://www.lgnewsroom.com/wp-content/uploads/2021/09/LG-X-CYBELLUM.png',
  'https://www.myce.com/wp-content/images_posts/2020/10/354608cc2df0b1ca60bef9cecb2803ac_samsung.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzfHOqVMmGbGpUwHh0bvWXwC4jyn01sfUHkw&usqp=CAU',
];

List<Map<String, dynamic>> categories = [
  {
    'category': 'Home & Office',
    'categories': ['Furniture', 'Appliances', 'Kitchen', 'Office', 'Storage']
  },
  {
    'category': 'Electronics',
    'categories': ['Television', 'Camera', 'Accessories', 'Audio', 'Video']
  },
  {
    'category': 'Garden & Outdoors',
    'categories': ['Hammock', 'Chairs', 'Table', 'Grill', 'Gardening']
  },
  {
    'category': 'Fashion',
    'categories': ['Jackets', 'Shoes', 'Shirts', 'Dresses', 'Handbags', 'Flats']
  },
  {
    'category': 'Phones & Tablets',
    'categories': [
      'Mobile Phones',
      'Smart Watches',
      'Tablets',
      'Headsets',
      'Batteries'
    ]
  },
  {
    'category': 'Computing',
    'categories': ['Laptops', 'Monitors', 'Desktop', 'Scanners', 'Data Storage']
  },
  {
    'category': 'Sporting & Goods',
    'categories': [
      'Nutrition',
      'Fitness',
      'Accessories',
      'Weigh Scale',
      'Equipment'
    ]
  },
];

List<Product> products = [
  Product(
      name: 'Cereals',
      rating: 4.5,
      price: 23,
      reviews: 10,
      category: 'Food',
      image:
          'https://www.bakingbusiness.com/ext/resources/2021/5/KelloggUKCereals_Lead.jpg?t=1621344434&width=1080',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Vegetables',
      rating: 4.3,
      price: 15,
      reviews: 12,
      category: 'Food',
      image:
          'https://image.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Kettle',
      rating: 4.6,
      price: 400,
      reviews: 25,
      category: 'Home & Office',
      image:
          'https://target.scene7.com/is/image/Target/GUEST_a573c8db-76b7-464f-8fb7-32ef7914b206?wid=488&hei=488&fmt=pjpeg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Blender',
      rating: 4.6,
      price: 450,
      reviews: 35,
      category: 'Home & Office',
      image:
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F23%2F2021%2F03%2F03%2Fnutribullet-smart-touch-blender-ecomm.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Dining Chair',
      rating: 3.9,
      price: 1050,
      reviews: 15,
      category: 'Home & Office',
      image:
          'https://res-5.cloudinary.com/dwpujv6in/image/upload/c_lpad,dpr_2.0,f_auto,h_560,q_auto:eco,w_700/v1/media/catalog/product/h/o/ho1_dnchwl_st_frontlow-host-dining-chair-tait-stone-walnut_1.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: '4 Gas burner cooker',
      rating: 3.9,
      price: 500,
      reviews: 10,
      category: 'Home & Office',
      image:
          'https://assets.products-live.ao.com/Images/09f55da4-aaf7-48a1-b1dd-112220e216c2/1280x1280/Electra-Exertis_TG60W_WH_06.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'JBL SOund bar 9.1',
      rating: 4.9,
      price: 250,
      reviews: 30,
      category: 'Electronics',
      image: 'https://m.media-amazon.com/images/I/51vx2Yq86JL._AC_SS450_.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: '43- inch Smart Tv, Samsung',
      rating: 3.9,
      price: 1550,
      reviews: 20,
      category: 'Electronics',
      image:
          'https://obee.co.ke/wp-content/uploads/2020/09/skyview-digital-tv-43-inch.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Power Protection',
      rating: 34.0,
      price: 200,
      reviews: 10,
      category: 'Electronics',
      image:
          'https://www.007systems.com/uploads/2/1/1/9/21192470/61a77pzihel-sl1000_1_orig.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Extension Cord, EU, Surge Protector',
      rating: 3.9,
      price: 89,
      reviews: 13,
      category: 'Electronics',
      image:
          'https://ae01.alicdn.com/kf/H50b7631efc45406e9dcc39a19f51caffM/EU-plug-Smart-Extension-Socket-Timer-ON-OFF-Surge-Protector-3-AC-Universal-Outlet-Power-Strip.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: '4 Gas burner cooker',
      rating: 3.9,
      price: 500,
      reviews: 10,
      category: 'Home & Office',
      image:
          'https://assets.products-live.ao.com/Images/09f55da4-aaf7-48a1-b1dd-112220e216c2/1280x1280/Electra-Exertis_TG60W_WH_06.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Charcoal Grill',
      rating: 34.0,
      price: 550,
      reviews: 17,
      category: 'Garden & Outdoors',
      image:
          'https://www.ubuy.ke/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNzFBQ2wyeTl6RVMuX0FDX1NMMTUwMF8uanBn.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Watering can',
      rating: 4.6,
      price: 45,
      reviews: 7,
      category: 'Garden & Outdoors',
      image:
          'https://www.thespruce.com/thmb/c3Ud2KherJN7E-btukcr6TtMUwY=/fit-in/1500x1457/filters:no_upscale():max_bytes(150000):strip_icc()/bestchoice-350e7252cb274f339553ec0738a33f6a.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Patio Furniture, pair wooden chairs',
      rating: 34.7,
      price: 850,
      reviews: 32,
      category: 'Garden & Outdoors',
      image:
          'https://pyxis.nymag.com/v1/imgs/62c/1e8/fcde83a52f3692f816dbbb404df498c8a1-metal3piece.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: '4Wooden Coffee Table',
      rating: 4.3,
      price: 500,
      reviews: 12,
      category: 'Home & Office',
      image:
          'https://marvel-b1-cdn.bc0a.com/f00000000034706/www.knoll.com/nkdc/images/inline/2c/meeting-conference-tables-landing-page-btn.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Force Shirt',
      rating: 5.0,
      price: 50,
      reviews: 40,
      category: 'Clothing',
      image:
          'https://mcnairshirts.com/wp-content/uploads/2019/03/mcnair-mens-plasmadry-olive-force-shirt-1500sq.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Men`s warm shirt',
      rating: 4.4,
      price: 55,
      reviews: 20,
      category: 'Clothing',
      image:
          'https://contents.mediadecathlon.com/p1484240/k\$ab565f3675dbdd7e3c486175e2c16583/men-s-travel-trekking-shirt-travel100-warm-bordeaux.jpg?&f=800x800',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Running Shoes',
      rating: 4.5,
      price: 100,
      reviews: 24,
      category: 'Clothing',
      image:
          'https://cdn.shopclues.com/images1/thumbnails/104158/320/320/148648730-104158193-1592481791.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Leather Handbag',
      rating: 4.6,
      price: 310,
      reviews: 32,
      category: 'Clothing',
      image: 'https://m.media-amazon.com/images/I/41gvpZPv40L._AC_SY780_.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: '12 Kg Dumbbells',
      rating: 4.0,
      price: 500,
      reviews: 10,
      category: 'Sporting Goods',
      image:
          'https://www.ubuy.ke/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvODFDSUwtNytuM0wuX0FDX1NMMTUwMF8uanBn.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Protein Flavored',
      rating: 4.0,
      price: 80,
      reviews: 19,
      category: 'Sporting Goods',
      image:
          'https://www.suppleform.co.uk/wp-content/uploads/2018/06/Private-Label-Post-workout-Recovery-Fuel-2.25kg-white-700x700.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  Product(
      name: 'Grey Skateboard',
      rating: 4.2,
      price: 170,
      reviews: 11,
      category: 'Sporting Goods',
      image: 'https://m.media-amazon.com/images/I/71I+GTI3BNL._AC_SL1391_.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
];
