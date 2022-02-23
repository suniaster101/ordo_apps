class Data {
  final List<Map<String, dynamic>> listOfItems = [
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 4.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 5.png',
      'color': '#64A1F4'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 6.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 7.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 14.png',
      'color': '#dfae1d'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 13.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 12.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 11.png',
      'color': '#e1f3d9'
    },
  ];
  final List<Map<String, dynamic>> listOfCartItems = [
    {
      'name': 'Tas Gucci',
      'picture': 'image 11.png',
      'price': 75000,
      'qty': 2,
      'notes': ''
    },
    {
      'name': 'Tas Eiger',
      'picture': 'image 13.png',
      'price': 75000,
      'qty': 1,
      'notes':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
    }
  ];
  List<Map<String, dynamic>> getListOfItems() {
    return listOfItems;
  }

  List<Map<String, dynamic>> getListOfCartItems() {
    return listOfCartItems;
  }
}
