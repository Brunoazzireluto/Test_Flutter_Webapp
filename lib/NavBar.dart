import "package:flutter/material.dart";
import "createClient.dart";
import "SearchClient.dart";

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(

        padding:EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Rafael"),
              accountEmail: Text("rafael@maeda-st.com.br"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network("https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg",
                fit: BoxFit.cover,
                width:90,
                height:90
                )

              )
            ),
            decoration: BoxDecoration(
              color:Colors.deepOrange,
            ),
            ),
          ExpansionTile(
            leading: Icon(Icons.point_of_sale),
            title: Text("Vendas"),
            children: [
              ListTile(
                leading: Icon(Icons.add_box),
                    title: Text("Criar Cliente"),
                onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => const createForm())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                    title: Text("Procurar Cliente"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SearchForm())
                  );
                },
              )
            ],
          )
        ],
      ),

    );
  }
}