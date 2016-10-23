class Fill {

  float fillX;         //フィル選択の左上のx座標
  float fillY;         //フィル選択の左上のy座標
  float fillW;         //フィルの幅
  float fillH;         //フィルの高さ
  float fillX2;        //フィルの右下のx座標
  float fillY2;        //フィルの右下のy座標
  int fillFlag;          //始点の保存とドラッグするためのフラグ
  int fillFLAG;          //次のフィルに移るためのフラグ
  int fillVisibleFlag;    //色塗り終了フラグ
  /////////////フィルを描く//////////////////////////////////////////////////////
  void display() {
    if (fillX!=0 && fillY!=0) {
      if (fillVisibleFlag==0) {
        stroke(0, 255, 0);
      } else if (fillVisibleFlag==1) {
        noStroke();
      }
      noFill();
      rect(fillX, fillY, fillW, fillH);
    }
  }
  ////////フィルの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (fillFLAG==0) {
      if (!mouseInFillButton()) {
        if (fillFlag==0) {
          fillVisibleFlag = 0;
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
        for (int f=0; f<pointC.size(); f++) {
          if (pointC.get(f).x!=0 && pointC.get(f).y!=0) {
            if (pointC.get(f).x<fillX2 && pointC.get(f).x>fillX && pointC.get(f).y<fillY2 && pointC.get(f).y>fillY) {
              output.println("  strokeFlag["+f+"]=1;");
              pointC.get(f).strokeFlag=true;
            } else if (pointC.get(f).x<fillX && pointC.get(f).x>fillX2 && pointC.get(f).y<fillY2 && pointC.get(f).y>fillY) {
              output.println("  strokeFlag["+f+"]=1;");
              pointC.get(f).strokeFlag=true;
            } else if (pointC.get(f).x<fillX2 && pointC.get(f).x>fillX && pointC.get(f).y<fillY && pointC.get(f).y>fillY2) {
              output.println("  strokeFlag["+f+"]=1;");
              pointC.get(f).strokeFlag=true;
            } else if (pointC.get(f).x<fillX && pointC.get(f).x>fillX2 && pointC.get(f).y<fillY && pointC.get(f).y>fillY2) {
              output.println("  strokeFlag["+f+"]=1;");
              pointC.get(f).strokeFlag=true;
            }
          }
        }
        for (int f=0; f<lineC.size(); f++) {
          if (lineC.get(f).x1!=0 && lineC.get(f).y1!=0) {
            if (lineC.get(f).x1<fillX2 && lineC.get(f).x1>fillX && lineC.get(f).y1<fillY2 && lineC.get(f).y1>fillY) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineC.get(f).strokeFlag=true;
            } else if (lineC.get(f).x1<fillX && lineC.get(f).x1>fillX2 && lineC.get(f).y1<fillY2 && lineC.get(f).y1>fillY) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineC.get(f).strokeFlag=true;
            } else if (lineC.get(f).x1<fillX2 && lineC.get(f).x1>fillX && lineC.get(f).y1<fillY && lineC.get(f).y1>fillY2) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineC.get(f).strokeFlag=true;
            } else if (lineC.get(f).x1<fillX && lineC.get(f).x1>fillX2 && lineC.get(f).y1<fillY && lineC.get(f).y1>fillY2) {
              output.println("  lineStrokeFlag["+f+"]=1;");
              lineC.get(f).strokeFlag=true;
            }
          }
        }
        for (int f=0; f<rectC.size(); f++) {
          if (rectC.get(f).x1!=0 && rectC.get(f).y1!=0) {
            if (rectC.get(f).x1<fillX2 && rectC.get(f).x1>fillX && rectC.get(f).y1<fillY2 && rectC.get(f).y1>fillY) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectC.get(f).fillFlag=true;
            } else if (rectC.get(f).x1<fillX && rectC.get(f).x1>fillX2 && rectC.get(f).y1<fillY2 && rectC.get(f).y1>fillY) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectC.get(f).fillFlag=true;
            } else if (rectC.get(f).x1<fillX2 && rectC.get(f).x1>fillX && rectC.get(f).y1<fillY && rectC.get(f).y1>fillY2) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectC.get(f).fillFlag=true;
            } else if (rectC.get(f).x1<fillX && rectC.get(f).x1>fillX2 && rectC.get(f).y1<fillY && rectC.get(f).y1>fillY2) {
              output.println("  rectFillFlag["+f+"]=1;");
              rectC.get(f).fillFlag=true;
            }
          }
        }
        for (int f=0; f<vertexC.size(); f++) {
          if (vertexC.get(f).x.get(0)!=0 && vertexC.get(f).y.get(0)!=0) {
            if (vertexC.get(f).x.get(0)<fillX2 && vertexC.get(f).x.get(0)>fillX && vertexC.get(f).y.get(0)<fillY2 && vertexC.get(f).y.get(0)>fillY) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexC.get(f).fillFlag=true;
            } else if (vertexC.get(f).x.get(0)<fillX && vertexC.get(f).x.get(0)>fillX2 && vertexC.get(f).y.get(0)<fillY2 && vertexC.get(f).y.get(0)>fillY) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexC.get(f).fillFlag=true;
            } else if (vertexC.get(f).x.get(0)<fillX2 && vertexC.get(f).x.get(0)>fillX && vertexC.get(f).y.get(0)<fillY && vertexC.get(f).y.get(0)>fillY2) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexC.get(f).fillFlag=true;
            } else if (vertexC.get(f).x.get(0)<fillX && vertexC.get(f).x.get(0)>fillX2 && vertexC.get(f).y.get(0)<fillY && vertexC.get(f).y.get(0)>fillY2) {
              output.println("  vertexFillFlag["+f+"]=1;");
              vertexC.get(f).fillFlag=true;
            }
          }
        }
        for (int f=0; f<ellipseC.size(); f++) {
          if (ellipseC.get(f).x1!=0 && ellipseC.get(f).y1!=0) {
            if (ellipseC.get(f).x1<fillX2 && ellipseC.get(f).x1>fillX && ellipseC.get(f).y1<fillY2 && ellipseC.get(f).y1>fillY) {
              output.println("  fillFlag["+f+"]=1;");
              ellipseC.get(f).fillFlag=true;
            } else if (ellipseC.get(f).x1<fillX && ellipseC.get(f).x1>fillX2 && ellipseC.get(f).y1<fillY2 && ellipseC.get(f).y1>fillY) {
              output.println("  fillFlag["+f+"]=1;");
              ellipseC.get(f).fillFlag=true;
            } else if (ellipseC.get(f).x1<fillX2 && ellipseC.get(f).x1>fillX && ellipseC.get(f).y1<fillY && ellipseC.get(f).y1>fillY2) {
              output.println("  fillFlag["+f+"]=1;");
              ellipseC.get(f).fillFlag=true;
            } else if (ellipseC.get(f).x1<fillX && ellipseC.get(f).x1>fillX2 && ellipseC.get(f).y1<fillY && ellipseC.get(f).y1>fillY2) {
              output.println("  fillFlag["+f+"]=1;");
              ellipseC.get(f).fillFlag=true;
            }
          }
        }
        fillVisibleFlag=1;
        fillFlag=0;
        fillFLAG=0;
      }
    }
    F++;
  }
  /*
  boolean check(String className,int , String x1Name, String x2Name, String y1Name, String y2Name){
   return className.get(_f).x1Name && className.get(f).x2Name && className.get(f).y1Name && className.get(f).y2Name;
   }
   */
}