class Point {

  float pointX;       //ポイントのx座標
  float pointY;       //ポイントのy座標
  float pointVX;      //ポイントのx座標方向速度
  float pointVY;      //ポイントのy座標方向速度
  int pointStrokeFlag;  //ポイントの色塗りフラグ
  int pointMoveFlag;    //ポイントの移動フラグ
  int pointMoveFLAGX;   //ポイントのx向き移動フラグ
  int pointMoveFLAGY;   //ポイントのy向き移動フラグ

  Point() {
    pointVX=(float)random(1, 3);
    pointVY=(float)random(1, 3);
    pointMoveFLAGX=(int)random(2);
    pointMoveFLAGY=(int)random(2);
  }


  /////////ポイントを描く/////////////////////////////////////////////////
  void display() {
    strokeWeight(10);
    if (pointX!=0 || pointY!=0) {
      if (pointStrokeFlag==1) {
        stroke(255, 0, 0);
      } else {
        stroke(0);
      }
      if (pointMoveFlag==1) {
        //ポイントのx座標移動判定
        if (pointX>width) {
          pointX=width;
          pointMoveFLAGX=1;
        }
        if (pointX<0) {
          pointX=0;
          pointMoveFLAGX=0;
        }
        if (pointMoveFLAGX==0) pointX=pointX+pointVX;
        if (pointMoveFLAGX==1) pointX=pointX-pointVX;
        //ポイントのy座標移動判定
        if (pointY>height) {
          pointY=height;
          pointMoveFLAGY=1;
        }
        if (pointY<0) {
          pointY=0;
          pointMoveFLAGY=0;
        }
        if (pointMoveFLAGY==0) pointY=pointY+pointVY;
        if (pointMoveFLAGY==1) pointY=pointY-pointVY;
      }
      point(pointX, pointY);
    }
    strokeWeight(2);
  }

  ///////////ポイントの座標決定/////////////////////////////////////////////////
  void dragged() {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>30 || scaleMouseY<0) {
      pointClass[P].pointX=scaleMouseX;
      pointClass[P].pointY=scaleMouseY;

      output.println("  pointX["+P+"]="+pointClass[P].pointX+";");
      output.println("  pointY["+P+"]="+pointClass[P].pointY+";");

      P++;
    }
  }
}