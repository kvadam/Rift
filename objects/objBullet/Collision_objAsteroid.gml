other.Hit(objData.mg.damage);
other.Knockback(image_angle, 0.005);
layer_sequence_create("Instances", x, y, Explosion_small);
instance_destroy();