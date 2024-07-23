import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/Core/utils/colors.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //custom appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        GestureDetector(child: SvgPicture.asset("assets/icons/car_shoping_icon.svg"), onTap: (){},),
                        SizedBox(width: 24,),
                        GestureDetector(child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            SizedBox(
                                width: 30,
                                child: SvgPicture.asset("assets/icons/Notices_icon.svg")),
                            const CircleAvatar(radius: 3,backgroundColor: AppColors.lILACSPRINGColor,),
                          ],
                        ), onTap: (){},),
                        Spacer(),
                        GestureDetector(child: SvgPicture.asset("assets/icons/drawer_icon.svg"), onTap: (){},),
                      ],
                    ),
                    Positioned(
                        right: 0,
                        left: 0,
                        child: SvgPicture.asset("assets/icons/icon_appbar_home_screen.svg")),
                  ],
                ),
              ),
            ),
            // Custom Container ابحث عن طلباتك
            // this container when click in  this go to the new page and show  all items in app and search in all item
            GestureDetector(
              onTap: (){
                // Navigate to the new page
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 17,vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffBCB7B7),
                    width: 0.8,
                  )
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(Icons.search,
                    color: Color(0xffBCB7B7),
                    ),
                    SizedBox(width: 10,),
                    Text("ابحث عن طلباتك",
                    textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        color: Color(0xff8E8E8E80).withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w400, // 700
                      ),
                    )
                  ],
                ),
              ),
            ),

            Stack(
              alignment: Alignment.bottomRight,
              children: [
                 Container(
                  padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 40),
                  margin: EdgeInsets.only(top: 24, right: 18, bottom: 10,left: 18),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF3F6FD)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image(image: AssetImage("assets/images/breads.png"),
                          width:155 ,
                          height:103 ,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("مخبوزات فريش",
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700, // 700
                                  color: Color(0xff6520CD)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: GoogleFonts.almarai(
                                color: Color(0xff626262B2).withOpacity(0.7),
                                fontSize: 13,
                                fontWeight: FontWeight.w700, // 700
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                 Positioned(
                   right: 19,
                   bottom: 11,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                                           topLeft: Radius.circular(35),
                                           topRight: Radius.circular(0),
                                           bottomLeft: Radius.circular(10),
                                           bottomRight: Radius.circular(20)
                       ),
                       gradient: LinearGradient(
                         colors: [
                           Color(0xff731BCD),
                           Color(0xff5426CD)
                         ]
                       )
                     ),
                     child:   Text( '%خصم 20',
                       style: GoogleFonts.almarai(
                         color: Colors.white,
                         fontSize: 14,
                         fontWeight: FontWeight.w700, // 700
                       ),
                     ),
                   ),
                 ),
              ]
            ),

            SizedBox(height: 10,),

            SizedBox(
              width:double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 8),
              child: Text("الشركات",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style:   GoogleFonts.almarai(
                  color: Color(0xff615D5D),
                    fontSize: 15,
                    fontWeight: FontWeight.w700, // 700
                  ),
                ),
            ),
            ),

            SizedBox(height: 10,),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.135,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    Column(
                      children: [
                        CircleAvatar(
                           radius: 35,
                           backgroundColor: Color(0xffF3F5FC),
                           child: Image(image: AssetImage("assets/images/company/pepsi.png"),)
                         ),
                        SizedBox(height: 2,),
                        Text("بيبسي",
                        style:   GoogleFonts.almarai(
                            color: Color(0xff8E8E8E),
                            fontSize: 11,
                            fontWeight: FontWeight.w700, // 700
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/shipsy.png"),)
                                        ),
                        SizedBox(height: 2,),
                        Text("بيبسي",
                          style:   GoogleFonts.almarai(
                            color: Color(0xff8E8E8E),
                            fontSize: 11,
                            fontWeight: FontWeight.w700, // 700
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/molto.png"),)
                                        ),
                        SizedBox(height: 2,),
                        Text("بيبسي",
                          style:   GoogleFonts.almarai(
                            color: Color(0xff8E8E8E),
                            fontSize: 11,
                            fontWeight: FontWeight.w700, // 700
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/cocacola.png"),)
                                        ),SizedBox(height: 2,),

                        Text("بيبسي",
                          style:   GoogleFonts.almarai(
                            color: Color(0xff8E8E8E),
                            fontSize: 11,
                            fontWeight: FontWeight.w700, // 700
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/shipsy.png"),)
                      ),
                      SizedBox(height: 2,),
                      Text("بيبسي",
                        style:   GoogleFonts.almarai(
                          color: Color(0xff8E8E8E),
                          fontSize: 11,
                          fontWeight: FontWeight.w700, // 700
                        ),
                      )
                    ],
                  ),
                    SizedBox(width: 10,),
                    Column(
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/molto.png"),)
                      ),
                      SizedBox(height: 2,),
                      Text("بيبسي",
                        style:   GoogleFonts.almarai(
                          color: Color(0xff8E8E8E),
                          fontSize: 11,
                          fontWeight: FontWeight.w700, // 700
                        ),
                      ),
                    ],
                  ),
                    SizedBox(width: 10,),
                    Column(
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF3F5FC),
                          child: Image(image: AssetImage("assets/images/company/cocacola.png"),)
                      ),
                      SizedBox(height: 2,),
                      Text("بيبسي",
                        style:   GoogleFonts.almarai(
                          color: Color(0xff8E8E8E),
                          fontSize: 11,
                          fontWeight: FontWeight.w700, // 700
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 5,),

            SizedBox(
              width:double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 8),
                child: Text("الأقسام",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style:   GoogleFonts.almarai(
                    color: Color(0xff615D5D),
                    fontSize: 15,
                    fontWeight: FontWeight.w700, // 700
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items per row
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 20,// Spacing between items horizontally
                    childAspectRatio: 1.1, // Aspect ratio of items (square in this case)
                  ), itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEDF1F8),
                ),
                child: Column(
                  children: [
                    Image(image: AssetImage("assets/images/bride_in_basket.png"),
                     width: 150,
                      height: 120,
                    ),
                    Text("مخبوزات"),
                  ],
                ),
              ),
                   itemCount: 9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
