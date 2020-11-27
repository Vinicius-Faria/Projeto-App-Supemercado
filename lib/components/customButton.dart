import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  const CustomButton(
      {Key key,
      this.label,
      this.background,
      this.borderColor,
      this.fontColor,
      this.child,
      this.onTap})
      : super(key: key);

      @override
   _CustomButtonState createState() => _CustomButtonState();
   }

class _CustomButtonState extends State<CustomButton>
with TickerProviderStateMixin{

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isTexthide = false;

@override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 32.0)
    .animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.push(context, PageTransition(
          type : PageTransitionType.fade,
          child: widget.child
        )).then((value){
          _scaleController.reverse().then((e){
            _isTexthide = false;
          });
        });
      }
    });
  }


   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _isTexthide = true;
          
        });
        _scaleController.forward();
      },
      child: AnimatedBuilder(
        animation: _scaleController,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
        child: Container(
          height: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.white,
              width: 1.5
            ),
          ),
          child: !_isTexthide ? Text(widget.label, style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold
          )) : Container() , 
                  )),
                ),
              );
            }
}
