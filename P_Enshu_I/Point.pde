class Point {
  float x;       //ポイントのx座標
  float y;       //ポイントのy座標
  float vx;      //ポイントのx座標方向速度
  float vy;      //ポイントのy座標方向速度
  boolean strokeFlag;  //ポイントの色塗りフラグ
  boolean moveFlag;    //ポイントの移動フラグ

  Point() {
    vx=random(-3, 3);
    vy=random(-3, 3);
  }

  void display() {
    strokeWeight(10);
    if (x!=0 || Y!=0) {
      stroke(strokeFlag ? red : 0);
      point(x, y);
    }
    strokeWeight(2);
  }

  void move() {
    x += vx;
    y += vy;
    if (x>width || x<0 ) vx*=-1;
    if (y>height || y<0 ) vy*=-1;
  }

  ///////////ポイントの座標決定/////////////////////////////////////////////////
  void dragged() {
    x = scaleMouseX;
    y = scaleMouseY;
    output.println("  pointX["+P+"]="+pointC.get(P).x+";");
    output.println("  pointY["+P+"]="+pointC.get(P).y+";");
    P++;
  }
}