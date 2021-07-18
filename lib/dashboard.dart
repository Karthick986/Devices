import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> images = ['https://stimg.cardekho.com/images/carexteriorimages/630x420/Honda/City/7899/1594802649685/front-left-side-47.jpg?tr=w-456',
                         'https://stimg.cardekho.com/images/carexteriorimages/630x420/Tata/Nexon/7384/1614326304397/front-left-side-47.jpg?impolicy=resize&imwidth=480',
                         'https://stimg.cardekho.com/images/carexteriorimages/630x420/Ford/Endeavour/8024/Ford-Endeavour-Sport-Edition/1600760844008/front-left-side-47.jpg?tr=w-456',
                         'https://stimg.cardekho.com/images/carexteriorimages/630x420/Mahindra/XUV500/7799/1615375182591/front-left-side-47.jpg?tr=w-456'];

  List<String> descp = ['Honda car prices start(GST Included) at Rs 6.22 Lakh for the most inexpensive model in its lineup, the Amaze. The most expensive car in Honda\'s lineup is the City, priced at Rs. 14.94 Lakh for its top variant.',
                'Tata car prices start(GST Included) at Rs 4.99 Lakh for the most inexpensive model in its lineup, the Tiago. The most expensive car in Tata\'s lineup is the Safari, priced at Rs. 21.81 Lakh for its top variant',
                'Ford car prices start(GST Included) at Rs 5.82 Lakh for the most inexpensive model in its lineup, the Figo. The most expensive car in Ford\'s lineup is the Endeavour, priced at Rs. 36.25 Lakh for its top variant.',
                'Mahindra car prices start(GST Included) at Rs 6.08 Lakh for the most inexpensive model in its lineup, the KUV100 NXT. The most expensive car in Mahindra\'s lineup is the Alturas G4, priced at Rs. 31.77 Lakh for its top variant.'];

  final ScrollController _scrollController = ScrollController();

  bool device1Selected = true;
  bool device2Selected = false;
  bool device3Selected = false;
  bool device4Selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard', style: TextStyle(fontSize: 14.0)),
          actions: [
            InkWell(
                child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.-VlTZHCYspucFBeP0VZUgQHaE7?pid=ImgDet&rs=1'),
              ),
            ))
          ],
          leading: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 5.0),
              child: Image.asset('images/cluematrix.png')),
        ),
        body: Scrollbar(
            isAlwaysShown: true,
            thickness: 10.0,
            hoverThickness: 10.0,
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(15.0),
                        child: ListTile(
                            title: Text('Device 1'),
                            trailing: (device1Selected) ? Icon(
                              Icons.arrow_drop_down_sharp,
                            ) : Icon(
                              Icons.arrow_drop_up_sharp,
                            ),
                          onTap: () {
                              setState(() {
                                isItemSelected();
                                device1Selected = true;

                                images = ['https://stimg.cardekho.com/images/carexteriorimages/630x420/Honda/City/7899/1594802649685/front-left-side-47.jpg?tr=w-456',
                                  'https://stimg.cardekho.com/images/carexteriorimages/630x420/Tata/Nexon/7384/1614326304397/front-left-side-47.jpg?impolicy=resize&imwidth=480',
                                  'https://stimg.cardekho.com/images/carexteriorimages/630x420/Ford/Endeavour/8024/Ford-Endeavour-Sport-Edition/1600760844008/front-left-side-47.jpg?tr=w-456',
                                  'https://stimg.cardekho.com/images/carexteriorimages/630x420/Mahindra/XUV500/7799/1615375182591/front-left-side-47.jpg?tr=w-456'];

                                 descp = ['Honda car prices start(GST Included) at Rs 6.22 Lakh for the most inexpensive model in its lineup, the Amaze. The most expensive car in Honda\'s lineup is the City, priced at Rs. 14.94 Lakh for its top variant.',
                                  'Tata car prices start(GST Included) at Rs 4.99 Lakh for the most inexpensive model in its lineup, the Tiago. The most expensive car in Tata\'s lineup is the Safari, priced at Rs. 21.81 Lakh for its top variant',
                                  'Ford car prices start(GST Included) at Rs 5.82 Lakh for the most inexpensive model in its lineup, the Figo. The most expensive car in Ford\'s lineup is the Endeavour, priced at Rs. 36.25 Lakh for its top variant.',
                                  'Mahindra car prices start(GST Included) at Rs 6.08 Lakh for the most inexpensive model in its lineup, the KUV100 NXT. The most expensive car in Mahindra\'s lineup is the Alturas G4, priced at Rs. 31.77 Lakh for its top variant.'];
                              });
                          },
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black12, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          color: (device1Selected) ? Color(0xFFA7D7FF) : Colors.white60,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(15.0),
                        child: ListTile(
                            title: Text('Device 2'),
                            trailing: (device2Selected) ? Icon(
                              Icons.arrow_drop_down_sharp,
                            ) : Icon(
                              Icons.arrow_drop_up_sharp,
                            ),
                        onTap: () {
                              setState(() {
                                isItemSelected();
                                device2Selected = true;

                                images = ['https://media.zigcdn.com/media/model/2020/Nov/re-meteor-350_360x240.jpg',
                                'https://media.zigcdn.com/media/model/2020/Dec/125-duke-2021_360x240.jpg',
                                'https://media.zigcdn.com/media/model/2021/Jul/tvs-ntorq-race-right-side-view_360x240.jpg',
                                'https://media.zigcdn.com/media/model/2021/Jun/honda-goldwing-awe-right-side-view_360x240.jpg'];

                                descp = ['Royal Enfield bikes price starts at Rs. 1.34 Lakh . Royal Enfield offers 6 new bike models and 6 upcoming models in India. The most popular Sports bike of Royal Enfield is Himalayan, Classic 350 is popular Cruiser. The expensive Royal Enfield bike is Continental GT 650 which is priced at Rs. 3.13 Lakh.',
                                'KTM bikes price starts at Rs. 1.69 Lakh . KTM offers 9 new bike models and 12 upcoming models in India. The most popular Sports bike of KTM is RC 390, 125 Duke is popular Commuter. The expensive KTM bike is 390 Adventure which is priced at Rs. 3.27 Lakh.',
                                'TVS Apache RTR 160 4V too has received a new engine tune, much like the 2021 Apache RTR 200 4V. The new engine change makes the apache 160 4v as the most powerful 160cc bike in the country. Other than that, TVS has hiked the price of the entire Apache range for the third time since its launch.',
                                'Honda bikes price starts at Rs. 63,273 . Honda offers 18 new bike models and 14 upcoming models in India. The most popular Scooter of Honda is Activa 6G, Gold Wing is popular Sports & Shine is popular Commuter. The expensive Honda bike is Gold Wing which is priced at Rs. 39.16 Lakh .'];
                              });
                        },
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black12, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                         color: (device2Selected) ? Color(0xFFA7D7FF) : Colors.white60,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(15.0),
                        child: ListTile(
                            title: Text('Device 3'),
                            trailing: (device3Selected) ? Icon(
                              Icons.arrow_drop_down_sharp,
                            ) : Icon(
                              Icons.arrow_drop_up_sharp,
                            ),
                          onTap: () {
                            setState(() {
                              isItemSelected();
                              device3Selected = true;

                              images = ['https://www.91-img.com/pictures/138363-v4-xiaomi-redmi-note-10-pro-mobile-phone-medium-1.jpg?tr=q-60',
                                'https://www.91-img.com/pictures/144386-v6-samsung-galaxy-m32-mobile-phone-medium-1.jpg?tr=q-60',
                                'https://www.91-img.com/pictures/130950-v7-oneplus-6t-8gb-ram-mobile-phone-medium-1.jpg?tr=q-60',
                                'https://www.91-img.com/pictures/144815-v4-vivo-y73-2021-mobile-phone-medium-1.jpg?tr=q-60'];

                              descp = ['Xiaomi is a very famous Chinese electronic company which mainly makes smartphones amongst other gadgets and consumer electronics. Xiaomi smartphones have created quite a rave in the Indian market thanks to its easy user interface and pocket friendly prices.',
                                'Samsung Galaxy M32 turns out to be a promising entertainer, provided it gets a Super AMOLED display with best-in-class features. The South Korean tech giant has incorporated great camera numbers on both ends, which can capture detailed images.',
                                'The OnePlus 6T 8GB RAM is a perfect combination of elegance, configuration and performance. Some out of the box feature like splash proof, dash charging technology and display protective layer make the device premium.',
                                'The 2021 variant of Vivo Y73 is a smart performer offering impressive visuals. The device with its powerful chipset and robust processor promises dynamic functioning throughout.'];
                            });
                          },
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black12, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                        color: (device3Selected) ? Color(0xFFA7D7FF) : Colors.white60,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(15.0),
                        child: ListTile(
                            title: Text('Device 4'),
                            trailing: (device4Selected) ? Icon(
                              Icons.arrow_drop_down_sharp,
                            ) : Icon(
                              Icons.arrow_drop_up_sharp,
                            ),
                          onTap: () {
                            setState(() {
                              isItemSelected();
                              device4Selected = true;

                              images = ['https://th.bing.com/th/id/OIP.NPhx5ZgvPdum9CN34K4hsQHaE7?pid=ImgDet&rs=1',
                                'https://th.bing.com/th/id/OIP.HNUYIJAizMMbcFqGUTKOhgHaEo?pid=ImgDet&rs=1',
                                'https://th.bing.com/th/id/OIP.qcNPuPJojLbi1zCF-TEK6wHaGS?pid=ImgDet&rs=1',
                                'https://th.bing.com/th/id/OIP.tO36xHdwrPl49k3AMSJHbQHaHa?pid=ImgDet&rs=1'];

                              descp = ['Dell Inc. is an American privately owned multinational computer technology company based in Round Rock, Texas, United States, that develops, sells, repairs, and supports computers and related products and services.',
                                'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.',
                                'The Hewlett-Packard Company was an American multinational information technology company headquartered in Palo Alto, California.',
                                'ASUSTeK Computer Inc., (stylized as ΛSUS) is a Taiwanese multinational computer hardware and electronics company headquartered in Beitou District, Taipei, Taiwan.'];
                            });
                          },
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black12, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                        color: (device4Selected) ? Color(0xFFA7D7FF) : Colors.white60,
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 5.0,
                              shadowColor: Colors.black,
                              margin: EdgeInsets.all(20.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(images[0]),
                                      radius: 85.0,
                                    ),
                                    Container(margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                                      child: Text(
                                      descp[0],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13.0),
                                    ))
                                  ],
                                ),
                                height: 400.0,
                              ))),
                      Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 5.0,
                              shadowColor: Colors.black,
                              margin: EdgeInsets.all(15.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(images[1]),
                                      radius: 85.0,
                                    ),
                                    Container(margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                                        child: Text(
                                      descp[1],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13.0),
                                    ))
                                  ],
                                ),
                                height: 400.0,
                              ))),
                      Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 5.0,
                              shadowColor: Colors.black,
                              margin: EdgeInsets.all(15.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(images[2]),
                                      radius: 85.0,
                                    ),
                                    Container(margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                                      child: Text(
                                      descp[2],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13.0),
                                    ))
                                  ],
                                ),
                                height: 400.0,
                              ))),
                      Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 5.0,
                              shadowColor: Colors.black,
                              margin: EdgeInsets.all(15.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(images[3]),
                                      radius: 85.0,
                                    ),
                                    Container(margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                                      child: Text(
                                      descp[3],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13.0),
                                    ))
                                  ],
                                ),
                                height: 400.0,
                              ))),
                    ],
                  )
                ],
              ),
            )));
  }
  void isItemSelected() {
    device1Selected = false;
    device2Selected = false;
    device3Selected = false;
    device4Selected = false;
  }
}
