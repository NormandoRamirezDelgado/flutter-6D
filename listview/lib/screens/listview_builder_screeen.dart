import 'package:flutter/material.dart';
import 'package:listview/themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener((){
      //print( '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ( scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent) {
        //add5();
        fechData();
      }
    });
  }

  Future fechData() async {
    //SI esta en true no hara nada
    if ( isLoading ) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(Duration( seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    //Para evitar el salto que dan las imagenes si no estoy al final
    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );

    
  }

  void add5(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e)
    );
    setState(() {});
  }

  Future<void> onRefresh() async {
    //Establecer el tiempo de espera
    await Future.delayed(Duration(seconds: 2));
    //Purgar el listado
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/loading.gif'), 
                    image: NetworkImage('https://picsum.photos/200/300?image=${ imagesIds[ index ]}')
                  );
                },
              ),
            ),

            if ( isLoading )
              Positioned(
                bottom: 40,
                //Porque es la mitad del container
                //y se ajusta a la mitad mas los 30 para que se centre
                left: size.width * 0.5 - 30,
                child: _LoadingIcon()
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.6),
        shape: BoxShape.circle,

      ),
      child: CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}