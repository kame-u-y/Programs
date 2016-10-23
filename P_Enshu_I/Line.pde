class Line {
  float x1;        //ラインの始点x座標
  float y1;        //ラインの始点y座標
  float x2;        //ラインの終点x座標
  float y2;        //ラインの終点y座標
  float w;         //ラインの幅
  float h;         //ラインの高さ
  float vx;        //ラインのx座標方向速度
  float vy;        //ラインのy座標方向速度
  boolean lineFlag;          //始点の保存とドラッグのためのフラグ
  boolean lineFLAG;          //次のラインに移るためのフラグ
  boolean strokeFlag;    //ラインの色塗りフラグ
  boolean moveFlag;      //ラインの移動フラグ

  Line() {
    vx = random(-3, 3);
    vy = random(-3, 3);
  }

  /////////////ラインを描く//////////////////////////////////////////////////////
  void display() {
    strokeWeight(5);
    if (x1!=0 && y1!=0) {
      if (strokeFlag) {
        stroke(0, 0, 255);
      } else {
        stroke(0);
      }

      line(x1, y1, x2, y2);
    }
    strokeWeight(2);
  }
  void move() {
    x1 += vx;
    x2 += vx;
    y1 += vy;
    y2 += vy;
    if (x1<=x2) {
      if (x2>width || x1<0) vx *= -1;
    } else {
      if (x1>width || x2<0) vx *= -1;
    }
    if (y1<=y2) {
      if (y2>height || y1<0) vy *= -1;
    } else {
      if (y1>height || y2<0) vy *= -1;
    }
  }

  /////////ラインの始点と長さを決定///////////////////////////////////////////////
  void dragged() {
    if (!lineFLAG) {
      if (!mouseInLineButton()) {
        if (!lineFlag) {
          x1=scaleMouseX;
          y1=scaleMouseY;
          lineFlag=true;
        }
      }
      if (lineFlag) {
        x2=scaleMouseX;
        y2=scaleMouseY;
      }
    }
  }
  ///////////ラインの終点を決定//////////////////////////////////////////////////
  void released() {
    if (!lineFLAG) {
      x2=scaleMouseX;
      y2=scaleMouseY;
      lineFLAG=true;
      if (x1!=0 && y1!=0) {
        output.println("  lineX1["+L+"]="+x1+";");
        output.println("  lineY1["+L+"]="+y1+";");
        output.println("  lineX2["+L+"]="+x2+";");
        output.println("  lineY2["+L+"]="+y2+";");
      }
    }
    L++;
  }
}