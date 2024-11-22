public final float DRAG_FACTOR = 0.95;
public abstract class Floater {
  protected Vec2 vel;
  protected Vec2 pos;
  protected Vector<Vec2> corners;
  protected float orientation;
  
  public void impulse(Vec2 impulse) {
    vel.translate(impulse);
  }
  
   public void directed_impulse(float relative_orientation, float magnitude) {
    Vec2 vel = new Vec2(1, 0);
    vel.rotate(new Vec2(0, 0), orientation);
    vel.rotate(new Vec2(0, 0), relative_orientation);
    vel.mul(magnitude);
    System.out.println("x" + vel.get_x() + "y" + vel.get_y());
    this.vel.translate(vel);
  }
  
  public void tick() {
    pos.translate(vel);
    vel.mul(DRAG_FACTOR);
  }
  
  public void collide(Floater other) {
  }
  
  public void draw() {
    switch (corners.size()) {
      case 0:
      return;
      case 1:
      corners.get(0).translate_chain(pos).draw_point();
      return;
    }
    Vector<Vec2> c = new Vector<>();
    for (Vec2 corner : corners) {
      c.add(corner.clone());
    }
    Polygon p = new Polygon((Vector<Vec2>)(c.clone()));
    p.translate(pos);
    p.rotate(pos, orientation);
    p.draw();
  }
  
  public void rotate() {
    this.orientation += radians(1);
  }
}
