import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icecream_shops/IceCreamDataModel.dart';

import 'Strings.dart';

class ShopList extends StatelessWidget {
  static List<String> icecreamName = [
    'Rolled Ice Cream',
    'Soft Serve',
    'Frozen Yogurt',
    'Snow Cream',
    'Gelato',
    'Kulfi',
    'Sorbet',
    'Faloodeh',
    'Granita',
    'Italian Ice'
  ];

  static List url = [
    'images/ic1.jpeg',
    'images/ic2.jpeg',
    'images/ic3.jpeg',
    'images/ic4.jpeg',
    'images/ic5.jpeg',
    'images/ic6.jpeg',
    'images/ic7.jpeg',
    'images/ic8.jpeg',
    'images/ic9.jpeg',
    'images/ic10.jpeg',
  ];

  static List country = [
    'Thailand',
    'U.S.',
    'U.S.',
    'Taiwan',
    'Italy',
    'India',
    'U.K',
    'Iran',
    'Sicily',
    'Italy',
  ];

  static List description = [
    "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines. Even more surprising is that the entire process — pouring the ice cream mixture, chopping, mixing add-ins (like strawberries and Oreos), and perfectly spiraling the ice cream — only takes about two minutes.",
    "A summertime classic in the U.S., soft-serve was first created way back in the 1930s. It gets its super-smooth texture from air that's introduced as the ingredients are frozen. Available in just chocolate and vanilla, it's most often served in a cone and then dipped in chocolate or rainbow sprinkles.",
    "Ridiculously popular in the U.S. especially, frozen yogurt got its mainstream debut in 1981, thanks to TCBY. It's based on the model of soft-serve but is lower in fat and offers a tangy taste, thanks to, well, the yogurt.",
    "Order ice cream in Taiwan and you'll get a dish of heavenly, fluffy sweets. After freezing a giant cube of milk and water, ice cream makers shave it into insanely thin strips and then top it with boba, fresh fruit, sweetened condensed milk, chocolate, and more. ",
    "Italian gelato ripples and forms imperfect scoops because it is so much denser than standard American ice cream. That's because it contains a higher volume of milk than cream, and it's churned at a slower rate, which means less air is incorporated. There also tends to be no (or very little) egg involved, so that the flavor is more intense and pure.",
    "Ice cream in India is more like custard than anything else. It's thick and dense and takes longer to melt, which makes it perfect for serving on a stick. Flavors are more on the savory side, with options like saffron, cardamom, and rose.",
    "There's no dairy in this fruit-forward frozen treat, making it denser and much richer in taste than traditional ice cream. Sometimes there's even alcohol in the recipe to lower the freezing temperature and create its popular, soft-yet-icy texture. While it's become popular in the U.S., it's been around in the U.K., France, and Australia for even longer.",
    "While this looks like a savory noodle dish, it is, in fact, ice cream from Iran. Blended with a mixture of rose water, sugar, and lime juice, these rice noodles are a perfect frozen treat. ",
    "Born in Sicily, this icy treat is a blend of sugar, water, and various flavorings from fruit, nuts, and herbs — like strawberry, almond, and mint. Its crystalized texture makes it best for eating with a spoon from a cup or bowl. ",
    "Often confused with American sherbet, Italian ice — AKA water ice — is fruit-based and made by the same process as standard ice cream (freezing the ingredients while mixing them). It contains no dairy, though sometimes egg white is included. Because of this, it's got an almost velvety-smooth texture and typical flavors include lemon, cherry, blue raspberry, and watermelon.",
  ];

  final List<IceCreamDataModel> IcecreamData = List.generate(
    icecreamName.length,
    (index) => IceCreamDataModel(
        '${icecreamName[index]}', '${url[index]}', '${country[index]}'),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.blueAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(Strings.title2)),
        body: ListView.builder(
            itemCount: IcecreamData.length,
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                width: 120,
                margin: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    showDialogBox(context, icecreamName[index], url[index],
                        description[index]);
                  },
                  child:Card(
                      elevation: 4.0,
                      color: Colors.white70,
                      child: Container(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Image.asset(
                                IcecreamData[index].url,
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 13.0,
                                  ),
                                  Text(
                                      IcecreamData[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "(${IcecreamData[index].country})",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

showDialogBox(context, name, url, description) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        url,
                        width: 130,
                        height: 130,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
