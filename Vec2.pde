public class Vec2 {
  private float x;
  private float y;
  
  public void translate(Vec2 other) {
    this.set_x(this.get_x() + other.get_x());
    this.set_y(this.get_y() + other.get_y());
  }
  
  public Vec2 translate_chain(Vec2 other) {
    return new Vec2(this.get_x() + other.get_x(), this.get_y() + other.get_y());
  }
  
  public Vec2(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public float get_x() {
    return this.x;
  }
  public float get_y() {
    return this.y;
  }
  public float set_x(float x) {
    float ret = this.x;
    this.x = x;
    return ret;
  }
  public float set_y(float y) {
    float ret = this.y;
    this.y = y;
    return ret;
  }
  public void mul(float m) {
    this.x *= m;
    this.x *= y;
  }
  public void draw_point() {
    point(this.x, this.y);
  }
  public void rotate(Vec2 center, float theta) {
    float x = this.x - center.x;
    float y = this.y - center.y;
    
    float x_prime = (x*cos(theta)) - (y*sin(theta));
    float y_prime = (y*cos(theta)) + (x*sin(theta));
    
    this.x = x_prime + center.x;
    this.y = y_prime + center.y;
  }
  public Vec2 clone() {
    return new Vec2(this.x, this.y);
  }
}
public void line(Vec2 a, Vec2 b) {
  line(a.get_x(), a.get_y(), b.get_x(), b.get_y());
}
public void line_wrapped(Vec2 a, Vec2 b) {
  line(a.get_x(), a.get_y(), b.get_x(), b.get_y());
  line(a.get_x()-width, a.get_y(), b.get_x()-width, b.get_y());
  line(a.get_x()+width, a.get_y(), b.get_x()+width, b.get_y());
  
  line(a.get_x(), a.get_y()-height, b.get_x(), b.get_y()-height);
  line(a.get_x(), a.get_y()+height, b.get_x(), b.get_y()+height);
}
