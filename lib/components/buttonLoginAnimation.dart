import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ButtonLoginAnimation extends StatefulWidget {

  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  const ButtonLoginAnimation({Key key, this.label, this.background, this.borderColor, this.fontColor, this.onTap, this.child}) : super(key: key);

  @override
  _ButtonLoginAnimationState createState() => _ButtonLoginAnimationState();
}

class _ButtonLoginAnimationState extends State<ButtonLoginAnimation>
with TickerProviderStateMixin {

  AnimationController _positionController;
  Animation<double> _positionAnimation;

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isLogin = false;
  bool _isIconHide = false;

  @override
  void initState() {
    super.initState();

    _positionController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );

    _positionAnimation = Tween<double>(begin: 1.0, end: 350.0)
    .animate(_positionController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        setState(() {
         _isIconHide = true; 
        });
        _scaleController.forward();
      }
    });

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32)
    .animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.pushReplacement(context, PageTransition(
          type: PageTransitionType.fade,
          child: widget.child
        ));
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          setState(() {
           
          });
          _positionController.forward();
        },
        child: Container(
          height: 63,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: !_isLogin ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.label, style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward, color: widget.fontColor,size: 32)
            ],
          ) : Stack(
            children: <Widget>[
              AnimatedBuilder(
                animation: _positionController,
                builder: (context, child) => Positioned(
                  left: _positionAnimation.value,
                  top: 5,
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context,build) => Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: !_isIconHide ? Icon(Icons.arrow_forward_ios, color: Colors.white,size: 45) : Container(),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}