class Vertex {
  ArrayList<Float> x = new ArrayList<Float>();
  ArrayList<Float> y = new ArrayList<Float>();

  float vx;         //バーテックスのx座標方向速度 配列は多角形ごと
  float vy;         //バーテックスのy座標方向速度 配列は多角形ごと
  int vertexFlag;           //次のバーテックスへと移るためのフラグ
  int lastFlag;       //最後のバーテックスを引くためのフラグ
  int V;                                       //バーテックスの配列を選択する変数
  boolean fillFlag;       //バーテックスの色塗りフラグ
  boolean moveFlag;       //バーテックスの移動フラグ

  Vertex() {
    vx=random(-3, 3);
    vy=random(-3, 3);
  }

  ///////////バーテックスを描く/////////////////////////////////////////////////////
  void display() {
    if (fillFlag==true) fill(cyan);
    else noFill();
    stroke(0);
    beginShape();
    for (int v2=0; v2<x.size(); v2++) {
      vertex(x.get(v2), y.get(v2));
    }
    if (lastFlag==1) vertex(x.get(0), y.get(0));
    endShape();
  }

  void move() {
    if (moveFlag) {
      for (int i=0; i<x.size(); i++) {
        x.set(i, x.get(i)+vx);
        y.set(i, y.get(i)+vy);
        if (x.get(i)>width || x.get(i)<0) vx *= -1;
        if (y.get(i)>height || y.get(i)<0) vy *= -1;
      }
    }
  }

  /////////バーテックスの頂点座標を決定///////////////////////////////////////////////
  void pressed() {
    if (!mouseInVertexButton()) {
      vertexC.get(U).vertexFlag=1;
      if (vertexC.get(U).vertexFlag==1) {
        beginShapeFLAG=1;
        x.add(scaleMouseX);
        y.add(scaleMouseY);
        output.println("  vertexX["+U+"]["+V+"]="+x.get(V)+";");
        output.println("  vertexY["+U+"]["+V+"]="+y.get(V)+";");
      }
    }
  }

  void key() {
    lastFlag=1;
    U++;
    V=0;
    vertexFlag=1;
    beginShapeFLAG=0;
  }
}