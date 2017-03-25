class Fill {

  float fillX;         //フィル選択の左上のx座標
  float fillY;         //フィル選択の左上のy座標
  float fillW;         //フィルの幅
  float fillH;         //フィルの高さ
  float fillX2;        //フィルの右下のx座標
  float fillY2;        //フィルの右下のy座標
  int fillFlag;          //始点の保存とドラッグするためのフラグ
  int fillFLAG;          //次のフィルに移るためのフラグ
  int fillFinishFlag;    //色塗り終了フラグ
  /////////////フィルを描く//////////////////////////////////////////////////////
  void display() {
    if (fillX!=0 && fillY!=0) {
      if (fillFinishFlag==0) {
        stroke(0, 255, 0);
      } else if (fillFinishFlag==1) {
        noStroke();
      }
      noFill();
      rect(fillX, fillY, fillW, fillH);
    }
  }
  ////////フィルの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (fillFLAG==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
        if (fillFlag==0) {
          fillX=scaleMouseX;
          fillY=scaleMouseY;
          fillFlag=1;
        }
        if (fillFlag==1) {
          fillW=scaleMouseX-fillX;
          fillH=scaleMouseY-fillY;
        }
      }
    }
  }
  ///////////フィルの大きさを決定////////////////////////////////////////////////
  void released() {
    if (fillFLAG==0) {
      fillW=scaleMouseX-fillX;
      fillH=scaleMouseY-fillY;
      if (fillX!=0 && fillY!=0) {
        fillX2=fillX+fillW;
        fillY2=fillY+fillH;
        //それぞれの図形の主要な点がフィルの枠内に入ると色を塗るフラグが立つ
        for (int f=0; f<5000; f++) {
          if (pointClass[f].pointX!=0 && pointClass[f].pointY!=0) {
            if (pointClass[f].pointX<fillX2 && pointClass[f].pointX>fillX && pointClass[f].pointY<fillY2 && pointClass[f].pointY>fillY) {
              output.println("  pointStrokeFlag["+f+"]=1;");
              pointClass[f].pointStrokeFlag=1;
            } else if (pointClass[f].pointX<fillX && pointClass[f].pointX>fillX2 && pointClass[f].pointY<fillY2 && pointClass[f].pointY>fillY) {
              output.println("  pointStrokeFlag["+f+"]=1;");
              pointClass[f].pointStrokeFlag=1;
            } else if (pointClass[f].pointX<fillX2 && pointClass[f].pointX>fillX && pointClass[f].pointY<fillY && pointClass[f].pointY>fillY2) {
              output.println("  pointStrokeFlag["+f+"]=1;");
              pointClass[f].pointStrokeFlag=1;
            } else if (pointClass[f].pointX<fillX && pointClass[f].pointX>fillX2 && pointClass[f].pointY<fillY && pointClass[f].pointY>fillY2) {
              output.println("  pointStrokeFlag["+f+"]=1;");
              pointClass[f].pointStrokeFlag=1;
            }
          }
        }
        for (int f=0; f<500; f++) {
          if (lineClass[f].lineX1!=0 && lineClass[f].lineY1!=0) {
            if (lineClass[f].lineX1<fillX2 && lineClass[f].lineX1>fillX && lineClass[f].lineY1<fillY2 && lineClass[f].lineY1>fillY) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineClass[f].lineStrokeFlag=1;
            } else if (lineClass[f].lineX1<fillX && lineClass[f].lineX1>fillX2 && lineClass[f].lineY1<fillY2 && lineClass[f].lineY1>fillY) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineClass[f].lineStrokeFlag=1;
            } else if (lineClass[f].lineX1<fillX2 && lineClass[f].lineX1>fillX && lineClass[f].lineY1<fillY && lineClass[f].lineY1>fillY2) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineClass[f].lineStrokeFlag=1;
            } else if (lineClass[f].lineX1<fillX && lineClass[f].lineX1>fillX2 && lineClass[f].lineY1<fillY && lineClass[f].lineY1>fillY2) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineClass[f].lineStrokeFlag=1;
            }
          }
          if (rectClass[f].rectX!=0 && rectClass[f].rectY!=0) {
            if (rectClass[f].rectX<fillX2 && rectClass[f].rectX>fillX && rectClass[f].rectY<fillY2 && rectClass[f].rectY>fillY) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectClass[f].rectFillFlag=1;
            } else if (rectClass[f].rectX<fillX && rectClass[f].rectX>fillX2 && rectClass[f].rectY<fillY2 && rectClass[f].rectY>fillY) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectClass[f].rectFillFlag=1;
            } else if (rectClass[f].rectX<fillX2 && rectClass[f].rectX>fillX && rectClass[f].rectY<fillY && rectClass[f].rectY>fillY2) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectClass[f].rectFillFlag=1;
            } else if (rectClass[f].rectX<fillX && rectClass[f].rectX>fillX2 && rectClass[f].rectY<fillY && rectClass[f].rectY>fillY2) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectClass[f].rectFillFlag=1;
            }
          }
          if (vertexClass[f].vertexX[0]!=0 && vertexClass[f].vertexY[0]!=0) {
            if (vertexClass[f].vertexX[0]<fillX2 && vertexClass[f].vertexX[0]>fillX && vertexClass[f].vertexY[0]<fillY2 && vertexClass[f].vertexY[0]>fillY) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexClass[f].vertexFillFlag=1;
            } else if (vertexClass[f].vertexX[0]<fillX && vertexClass[f].vertexX[0]>fillX2 && vertexClass[f].vertexY[0]<fillY2 && vertexClass[f].vertexY[0]>fillY) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexClass[f].vertexFillFlag=1;
            } else if (vertexClass[f].vertexX[0]<fillX2 && vertexClass[f].vertexX[0]>fillX && vertexClass[f].vertexY[0]<fillY && vertexClass[f].vertexY[0]>fillY2) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexClass[f].vertexFillFlag=1;
            } else if (vertexClass[f].vertexX[0]<fillX && vertexClass[f].vertexX[0]>fillX2 && vertexClass[f].vertexY[0]<fillY && vertexClass[f].vertexY[0]>fillY2) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexClass[f].vertexFillFlag=1;
            }
          }
          if (ellipClass[f].ellipX!=0 && ellipClass[f].ellipY!=0) {
            if (ellipClass[f].ellipX<fillX2 && ellipClass[f].ellipX>fillX && ellipClass[f].ellipY<fillY2 && ellipClass[f].ellipY>fillY) {
              output.println("  ellipFillFlag["+f+"]=1;");
              ellipClass[f].ellipFillFlag=1;
            } else if (ellipClass[f].ellipX<fillX && ellipClass[f].ellipX>fillX2 && ellipClass[f].ellipY<fillY2 && ellipClass[f].ellipY>fillY) {
              output.println("  ellipFillFlag["+f+"]=1;");
              ellipClass[f].ellipFillFlag=1;
            } else if (ellipClass[f].ellipX<fillX2 && ellipClass[f].ellipX>fillX && ellipClass[f].ellipY<fillY && ellipClass[f].ellipY>fillY2) {
              output.println("  ellipFillFlag["+f+"]=1;");
              ellipClass[f].ellipFillFlag=1;
            } else if (ellipClass[f].ellipX<fillX && ellipClass[f].ellipX>fillX2 && ellipClass[f].ellipY<fillY && ellipClass[f].ellipY>fillY2) {
              output.println("  ellipFillFlag["+f+"]=1;");
              ellipClass[f].ellipFillFlag=1;
            }
          }
        }
        fillFinishFlag=1;
      }
    }
    F++;
  }
}