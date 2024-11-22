import java.util.Vector;
public class Polygon {
  public Polygon(Vector<Vec2> points) {this.points = points;}
  public Vector<Vec2> points;
  public void draw() {
    if (points.size() == 0) {
      return;
    } else if (points.size() == 1) {
      Vec2 point = points.get(0);
      point(point.get_x(), point.get_y());
    } else {
      for (int i = 0; i < points.size() -1; i++) {
        Vec2 a = points.get(i);
        Vec2 b = points.get(i+1);
        line(a,b);
      }
    }
  }
  public void translate(Vec2 t) {
    for (Vec2 point : points) {
      point.translate(t);
    }
  }
  public void rotate(Vec2 center, float radians) {
    for (Vec2 point : points) {
      point.rotate(center, radians);
    }
  }
}
