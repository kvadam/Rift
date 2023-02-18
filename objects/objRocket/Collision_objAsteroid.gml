other.Hit(objData.rl.damage);
other.Knockback(image_angle, 1);
layer_sequence_create("Instances", x, y, Explosion_small);
instance_destroy();