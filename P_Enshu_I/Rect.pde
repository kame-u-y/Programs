class Rect {

  float rectX;         //レクトの始点x座標
  float rectY;         //レクトの始点y座標
  float rectW;         //レクトの幅
  float rectH;         //レクトの高さ
  float rectX2;        //レクトの終点x座標
  float rectY2;        //レクトの終点y座標
  float rectVX;        //レクトのx座標方向速度
  float rectVY;        //レクトのy座標方向速度
  int rectFlag;          //始点の保存とドラッグするためのフラグ
  int rectFLAG;          //次のレクトに移るためのフラグ
  int rectFillFlag;      //レクトの色塗りフラグ
  int rectMoveFlag;      //レクトの移動フラグ
  int rectMoveFLAGX;     //レクトのx向き移動フラグ
  int rectMoveFLAGY;     //レクトのy向き移動フラグ

  Rect() {
    for (int r=0; r<500; r++) {
      rectVX=(float)random(1, 3);
      rectVY=(float)random(1, 3);
      rectMoveFLAGX=(int)random(2);
      rectMoveFLAGY=(int)random(2);
    }
  }


  /////////////レクトを描く//////////////////////////////////////////////////////
  void display() {
    if (rectX!=0 && rectY!=0) {
      if (rectFillFlag==1) {
        fill(0, 255, 0, 80);
      } else {
        noFill();
      }
      stroke(0);
      if (rectMoveFlag==1) {
        //レクトのx座標移動判定
        rectX2=rectX+rectW;
        if (rectX<=rectX2) {
          if (rectX2>width) {
            rectX=width-rectW;
            rectMoveFLAGX=1;
          }
          if (rectX<0) {
            rectX=0;
            rectMoveFLAGX=0;
          }
        } else if (rectX>rectX2) {
          if (rectX>width) {
            rectX=width;
            rectMoveFLAGX=1;
          }
          if (rectX2<0) {
            rectX=0-rectW;
            rectMoveFLAGX=0;
          }
        }
        if (rectMoveFLAGX==0) rectX=rectX+rectVX;
        if (rectMoveFLAGX==1) rectX=rectX-rectVX;
        //レクトのy座標移動判定
        rectY2=rectY+rectH;
        if (rectY<=rectY2) {
          if (rectY2>height) {
            rectY=height-rectH;
            rectMoveFLAGY=1;
          }
          if (rectY<0) {
            rectY=0;
            rectMoveFLAGY=0;
          }
        } else if (rectY>rectY2) {
          if (rectY>height) {
            rectY=height;
            rectMoveFLAGY=1;
          }
          if (rectY2<0) {
            rectY=0-rectH;
            rectMoveFLAGY=0;
          }
        }
        if (rectMoveFLAGY==0) rectY=rectY+rectVY;
        if (rectMoveFLAGY==1) rectY=rectY-rectVY;
      }

      rect(rectX, rectY, rectW, rectH);
    }
  }
  ////////レクトの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (rectClass[R].rectFLAG==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>90 || scaleMouseY<60) {
        if (rectClass[R].rectFlag==0) {
          rectClass[R].rectX=scaleMouseX;
          rectClass[R].rectY=scaleMouseY;
          rectClass[R].rectFlag=1;
        }
      }
      if (rectClass[R].rectFlag==1) {
        rectClass[R].rectW=scaleMouseX-rectClass[R].rectX;
        rectClass[R].rectH=scaleMouseY-rectClass[R].rectY;
      }
    }
  }
  ///////////レクトの大きさを決定////////////////////////////////////////////////
  void released() {
    if (rectClass[R].rectFLAG==0) {
      rectClass[R].rectW=scaleMouseX-rectClass[R].rectX;
      rectClass[R].rectH=scaleMouseY-rectClass[R].rectY;
      if (rectClass[R].rectX!=0 && rectClass[R].rectY!=0) {
        output.println("  rectX["+R+"]="+rectClass[R].rectX+";");
        output.println("  rectY["+R+"]="+rectClass[R].rectY+";");
        output.println("  rectW["+R+"]="+rectClass[R].rectW+";");
        output.println("  rectH["+R+"]="+rectClass[R].rectH+";");
      }
    }
    R++;
  }
}