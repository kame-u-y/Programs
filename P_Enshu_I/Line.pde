class Line {

  float lineX1;        //ラインの始点x座標
  float lineY1;        //ラインの始点y座標
  float lineX2;        //ラインの終点x座標
  float lineY2;        //ラインの終点y座標
  float lineW;         //ラインの幅
  float lineH;         //ラインの高さ
  float lineVX;        //ラインのx座標方向速度
  float lineVY;        //ラインのy座標方向速度
  int lineFlag;          //始点の保存とドラッグのためのフラグ
  int lineFLAG;          //次のラインに移るためのフラグ
  int lineStrokeFlag;    //ラインの色塗りフラグ
  int lineMoveFlag;      //ラインの移動フラグ
  int lineMoveFLAGX;     //ラインのx向き移動フラグ
  int lineMoveFLAGY;     //ラインのy向き移動フラグ

  Line() {
    for (int l=0; l<500; l++) {
      lineVX=(float)random(1, 3);
      lineVY=(float)random(1, 3);
      lineMoveFLAGX=(int)random(2);
      lineMoveFLAGY=(int)random(2);
    }
  }


  /////////////ラインを描く//////////////////////////////////////////////////////
  void display() {
    strokeWeight(5);
    if (lineX1!=0 && lineY1!=0) {
      if (lineStrokeFlag==1) {
        stroke(0, 0, 255);
      } else {
        stroke(0);
      }
      if (lineMoveFlag==1) {
        //ラインのx座標移動判定
        if (lineX1<=lineX2) {
          lineW=lineX2-lineX1;
          if (lineX2>width) {
            lineX1=width-lineW;
            lineX2=width;
            lineMoveFLAGX=1;
          }
          if (lineX1<0) {
            lineX1=0;
            lineX2=0+lineW;
            lineMoveFLAGX=0;
          }
          if (lineMoveFLAGX==0) {
            lineX1=lineX1+lineVX;
            lineX2=lineX2+lineVX;
          }
          if (lineMoveFLAGX==1) {
            lineX1=lineX1-lineVX;
            lineX2=lineX2-lineVX;
          }
        }
        if (lineX1>lineX2) {
          lineW=lineX1-lineX2;
          if (lineX1>width) {
            lineX1=width;
            lineX2=width-lineW;
            lineMoveFLAGX=1;
          }
          if (lineX2<0) {
            lineX1=0+lineW;
            lineX2=0;
            lineMoveFLAGX=0;
          }
          if (lineMoveFLAGX==0) {
            lineX1=lineX1+lineVX;
            lineX2=lineX2+lineVX;
          }
          if (lineMoveFLAGX==1) {
            lineX1=lineX1-lineVX;
            lineX2=lineX2-lineVX;
          }
        }
        //ラインのy座標移動判定
        if (lineY1<=lineY2) {
          lineH=lineY2-lineY1;
          if (lineY2>height) {
            lineY1=height-lineH;
            lineY2=height;
            lineMoveFLAGY=1;
          }
          if (lineY1<0) {
            lineY1=0;
            lineY2=0+lineH;
            lineMoveFLAGY=0;
          }
          if (lineMoveFLAGY==0) {
            lineY1=lineY1+lineVY;
            lineY2=lineY2+lineVY;
          }
          if (lineMoveFLAGY==1) {
            lineY1=lineY1-lineVY;
            lineY2=lineY2-lineVY;
          }
        }
        if (lineY1>lineY2) {
          lineH=lineY1-lineY2;
          if (lineY1>height) {
            lineY1=height;
            lineY2=height-lineH;
            lineMoveFLAGY=1;
          }
          if (lineY2<0) {
            lineY1=0+lineH;
            lineY2=0;
            lineMoveFLAGY=0;
          }
          if (lineMoveFLAGY==0) {
            lineY1=lineY1+lineVY;
            lineY2=lineY2+lineVY;
          }
          if (lineMoveFLAGY==1) {
            lineY1=lineY1-lineVY;
            lineY2=lineY2-lineVY;
          }
        }
      }
      line(lineX1, lineY1, lineX2, lineY2);
    }
    strokeWeight(2);
  }
  /////////ラインの始点と長さを決定///////////////////////////////////////////////
  void dragged() {
    if (lineClass[L].lineFLAG==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>60 || scaleMouseY<30) {
        if (lineClass[L].lineFlag==0) {
          lineClass[L].lineX1=scaleMouseX;
          lineClass[L].lineY1=scaleMouseY;
          lineClass[L].lineFlag=1;
        }
      }
      if (lineClass[L].lineFlag==1) {
        lineClass[L].lineX2=scaleMouseX;
        lineClass[L].lineY2=scaleMouseY;
      }
    }
  }
  ///////////ラインの終点を決定//////////////////////////////////////////////////
  void released() {
    if (lineClass[L].lineFLAG==0) {
      lineClass[L].lineX2=scaleMouseX;
      lineClass[L].lineY2=scaleMouseY;
      lineClass[L].lineFLAG=1;
      if (lineClass[L].lineX1!=0 && lineClass[L].lineY1!=0) {
        output.println("  lineX1["+L+"]="+lineClass[L].lineX1+";");
        output.println("  lineY1["+L+"]="+lineClass[L].lineY1+";");
        output.println("  lineX2["+L+"]="+lineClass[L].lineX2+";");
        output.println("  lineY2["+L+"]="+lineClass[L].lineY2+";");
      }
    }
    L++;
  }
}