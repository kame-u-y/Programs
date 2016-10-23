class Ellipse {
  float x1;      //エリプスの中心x座標
  float y1;      //エリプスの中心y座標
  float vx;     //エリプスのx座標移動速度
  float vy;     //エリプスのy座標移動速度
  float x2;     //エリプスの横半径
  float y2;     //エリプスの縦半径
  boolean ellipFlag;       //中心の保存とドラッグのためのフラグ
  boolean ellipFLAG;       //次のエリプスに移るためのフラグ
  boolean fillFlag;   //エリプスの色塗りフラグ
  boolean moveFlag;   //エリプスの移動フラグ

  Ellipse() {
    vx = random(-3, 3);
    vy = random(-3, 3);
  }

  /////////////エリプスを描く//////////////////////////////////////////////////////
  void display() {
    if (x1!=0 || y1!=0) {
      if (fillFlag) fill(yellow);
      else noFill();
      stroke(0);
      ellipse(x1, y1, x2, y2);
    }
  }

  void move() {
    x1 += vx;
    x2 += vx;
    y1 += vy;
    y2 += vy;
    if (x2>width || x1<0) vx *= -1;
    if (y2>height || y1<0) vy *= -1;
  }
  /////////エリプスの中心と半径を選択///////////////////////////////////////////////
  void dragged() {
    if (!ellipFLAG) {
      if (!mouseInEllipseButton()) {
        if (!ellipFlag) {
          x1 = scaleMouseX;
          y1 = scaleMouseY;
          ellipFlag=true;
        }
      }
      if (ellipFlag) {
        x2 = scaleMouseX;
        y2 = scaleMouseY;
      }
    }
  }
  /////////エリプスの大きさを決定////////////////////////////////////////////////
  void released() {
    if (!ellipFLAG) {
      x2 = scaleMouseX;
      y2 = scaleMouseY;
      if (x1>x2) {
        float saveX = x1;
        x1 = x2;
        x2 = saveX;
      }
      if (y1>y2) {
        float saveY = y1;
        y1 = y2;
        y2 = saveY;
      }
      ellipFLAG = true;
      if (x1!=0 && y1!=0) {
        output.println("  ellipX["+E+"]="+x1+";");
        output.println("  ellipY["+E+"]="+y1+";");
        output.println("  ellipR1["+E+"]="+x2+";");
        output.println("  ellipR2["+E+"]="+y2+";");
      }
    }
    E++;
  }
}