class Rect {

  float x1;         //レクトの始点x座標
  float y1;         //レクトの始点y座標
  float w;         //レクトの幅
  float h;         //レクトの高さ
  float x2;        //レクトの終点x座標
  float y2;        //レクトの終点y座標
  float vx;        //レクトのx座標方向速度
  float vy;        //レクトのy座標方向速度
  boolean rectFlag;          //始点の保存とドラッグするためのフラグ
  boolean rectFLAG;          //次のレクトに移るためのフラグ
  boolean fillFlag;      //レクトの色塗りフラグ
  boolean moveFlag;      //レクトの移動フラグ
  boolean moveFLAGX;     //レクトのx向き移動フラグ
  boolean moveFLAGY;     //レクトのy向き移動フラグ

  Rect() {
    vx=random(-3, 3);
    vy=random(-3, 3);
  }


  /////////////レクトを描く//////////////////////////////////////////////////////
  void display() {
    if (x1!=0 && y1!=0) {
      if (fillFlag==true) {
        fill(0, 255, 0, 80);
      } else {
        noFill();
      }
      stroke(0);
      rect(x1, y1, w, h);
    }
  }
  void move() {
    x1 += vx;
    x2 = x1 + w;
    y1 += vy;
    y2 = y1 + h;
    if (x1<=x2) {
      if (x1<0 || x2>width) vx *= -1;
    } else {
      if (x2<0 || x1>width) vx *= -1;
    }
    if (y1<=y2) {
      if (y1<0 || y2>height) vy *= -1;
    } else {
      if (y2<0 || y1>height) vy *= -1;
    }
  }

  ////////レクトの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (!rectFLAG) {
      if (!mouseInRectButton()) {
        if (!rectFlag) {
          x1=scaleMouseX;
          y1=scaleMouseY;
          rectFlag=true;
        }
      }
      if (rectFlag) {
        w=scaleMouseX-x1;
        h=scaleMouseY-y1;
      }
    }
  }
  ///////////レクトの大きさを決定////////////////////////////////////////////////
  void released() {
    if (!rectFLAG) {
      w=scaleMouseX-x1;
      h=scaleMouseY-y1;
      if (x1!=0 && y1!=0) {
        output.println("  x["+R+"]="+x1+";");
        output.println("  y["+R+"]="+y1+";");
        output.println("  w["+R+"]="+w+";");
        output.println("  h["+R+"]="+h+";");
      }
    }
    R++;
  }
}