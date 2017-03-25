class Ellipse {

  float ellipX;      //エリプスの中心x座標
  float ellipY;      //エリプスの中心y座標
  float ellipVX;     //エリプスのx座標移動速度
  float ellipVY;     //エリプスのy座標移動速度
  float ellipR1;     //エリプスの横半径
  float ellipR2;     //エリプスの縦半径
  int ellipFlag;       //中心の保存とドラッグのためのフラグ
  int ellipFLAG;       //次のエリプスに移るためのフラグ
  int ellipFillFlag;   //エリプスの色塗りフラグ
  int ellipMoveFlag;   //エリプスの移動フラグ
  int ellipMoveFLAGX;  //エリプスのx向き移動フラグ
  int ellipMoveFLAGY;  //エリプスのy向き移動フラグ

  Ellipse() {
    ellipVX = (int)random(1, 3);
    ellipVY = (int)random(1, 3);
    ellipMoveFLAGX =(int)random(2);
    ellipMoveFLAGY =(int)random(2);
  }


  /////////////エリプスを描く//////////////////////////////////////////////////////
  void display() {
    if (ellipX!=0 || ellipY!=0) {
      if (ellipFillFlag==1) {
        fill(255, 255, 0, 80);
      } else {
        noFill();
      }
      if (ellipMoveFlag==1) {
        if (ellipR1>=0) {
          //エリプスのx座標移動判定
          if (ellipX>width-ellipR1) {
            ellipX = width-ellipR1;
            ellipMoveFLAGX=1;
          }
          if (ellipX<0+ellipR1) {
            ellipX=0+ellipR1;
            ellipMoveFLAGX=0;
          }
        }
        if (ellipR1<0) {
          if (ellipX>width+ellipR1) {
            ellipX=width+ellipR1;
            ellipMoveFLAGX=1;
          }
          if (ellipX<0-ellipR1) {
            ellipX=0-ellipR1;
            ellipMoveFLAGX=0;
          }
        }
        if (ellipMoveFLAGX==0) ellipX=ellipX+ellipVX;
        if (ellipMoveFLAGX==1) ellipX=ellipX-ellipVX;
        //エリプスのy座標移動判定
        if (ellipR2>=0) {
          if (ellipY>height-ellipR2) {
            ellipY=height-ellipR2;
            ellipMoveFLAGY=1;
          }
          if (ellipY<0+ellipR2) {
            ellipY=0+ellipR2;
            ellipMoveFLAGY=0;
          }
        }
        if (ellipR2<0) {
          if (ellipY>height+ellipR2) {
            ellipY=height+ellipR2;
            ellipMoveFLAGY=1;
          }
          if (ellipY<0-ellipR2) {
            ellipY=0-ellipR2;
            ellipMoveFLAGY=0;
          }
        }
        if (ellipMoveFLAGY==0) ellipY=ellipY+ellipVY;
        if (ellipMoveFLAGY==1) ellipY=ellipY-ellipVY;
      }
      stroke(0);
      ellipse(ellipX, ellipY, 2*ellipR1, 2*ellipR2);
    }
  }
  /////////エリプスの中心と半径を選択///////////////////////////////////////////////
  void dragged() {
    if (ellipClass[E].ellipFLAG==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>150 || scaleMouseY<120) {
        if (ellipClass[E].ellipFlag==0) {
          ellipClass[E].ellipX=scaleMouseX;
          ellipClass[E].ellipY=scaleMouseY;
          ellipClass[E].ellipFlag=1;
        }
      }
      if (ellipClass[E].ellipFlag==1) {
        ellipClass[E].ellipR1=scaleMouseX-ellipClass[E].ellipX;
        ellipClass[E].ellipR2=scaleMouseY-ellipClass[E].ellipY;
      }
    }
  }
  /////////エリプスの大きさを決定////////////////////////////////////////////////
  void released() {
    if (ellipClass[E].ellipFLAG==0) {
      ellipClass[E].ellipR1=scaleMouseX-ellipClass[E].ellipX;
      ellipClass[E].ellipR2=scaleMouseY-ellipClass[E].ellipY;
      if (ellipClass[E].ellipX!=0 && ellipClass[E].ellipY!=0) {
        output.println("  ellipX["+E+"]="+ellipClass[E].ellipX+";");
        output.println("  ellipY["+E+"]="+ellipClass[E].ellipY+";");
        output.println("  ellipR1["+E+"]="+ellipClass[E].ellipR1+";");
        output.println("  ellipR2["+E+"]="+ellipClass[E].ellipR2+";");
      }
    }
    E++;
  }
}