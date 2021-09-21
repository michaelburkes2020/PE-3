 void update() {

    // The random2D() function will give us a PVector of length 1 pointing in a random direction.
    acceleration = PVector.random2D();

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
