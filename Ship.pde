class Ship extends Floater {
  Ship() {
    vel = new Vec2(0, 0);
    pos = new Vec2(width/2, height/2);
    orientation = 0;
    corners = new Vector<>();
    corners.add(new Vec2(10, 0));
    corners.add(new Vec2(-10, -5));
    corners.add(new Vec2(-10, 5));
    corners.add(new Vec2(10, 0));
  }
}
