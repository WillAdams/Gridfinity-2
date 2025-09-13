//!OpenSCAD

module makebase() {
  union(){
    hull(){
      translate([6.5, 6.5, 0]){
        cylinder(r1=0.8, r2=1.6, h=0.8, center=false);
      }
      translate([(-6.5), 6.5, 0]){
        cylinder(r1=0.8, r2=1.6, h=0.8, center=false);
      }
      translate([6.5, (-6.5), 0]){
        cylinder(r1=0.8, r2=1.6, h=0.8, center=false);
      }
      translate([(-6.5), (-6.5), 0]){
        cylinder(r1=0.8, r2=1.6, h=0.8, center=false);
      }
    }
    translate([0, 0, 0.8]){
      hull(){
        translate([6.5, 6.5, 0]){
          cylinder(r1=1.6, r2=1.6, h=1.8, center=false);
        }
        translate([(-6.5), 6.5, 0]){
          cylinder(r1=1.6, r2=1.6, h=1.8, center=false);
        }
        translate([6.5, (-6.5), 0]){
          cylinder(r1=1.6, r2=1.6, h=1.8, center=false);
        }
        translate([(-6.5), (-6.5), 0]){
          cylinder(r1=1.6, r2=1.6, h=1.8, center=false);
        }
      }
    }
    translate([0, 0, 2.6]){
      hull(){
        translate([6.5, 6.5, 0]){
          cylinder(r1=1.6, r2=3.75, h=2.15, center=false);
        }
        translate([(-6.5), 6.5, 0]){
          cylinder(r1=1.6, r2=3.75, h=2.15, center=false);
        }
        translate([6.5, (-6.5), 0]){
          cylinder(r1=1.6, r2=3.75, h=2.15, center=false);
        }
        translate([(-6.5), (-6.5), 0]){
          cylinder(r1=1.6, r2=3.75, h=2.15, center=false);
        }
      }
    }
  }
}

module makerecess() {
  union(){
    translate([0, 0, (-0.25)]){
      hull(){
        translate([6.5, 6.5, 0]){
          cylinder(r1=0.8, r2=1.85, h=1.05, center=false);
        }
        translate([(-6.5), 6.5, 0]){
          cylinder(r1=0.8, r2=1.85, h=1.05, center=false);
        }
        translate([6.5, (-6.5), 0]){
          cylinder(r1=0.8, r2=1.85, h=1.05, center=false);
        }
        translate([(-6.5), (-6.5), 0]){
          cylinder(r1=0.8, r2=1.85, h=1.05, center=false);
        }
      }
    }
    translate([0, 0, 0.8]){
      hull(){
        translate([6.5, 6.5, 0]){
          cylinder(r1=1.85, r2=1.85, h=1.8, center=false);
        }
        translate([(-6.5), 6.5, 0]){
          cylinder(r1=1.85, r2=1.85, h=1.8, center=false);
        }
        translate([6.5, (-6.5), 0]){
          cylinder(r1=1.85, r2=1.85, h=1.8, center=false);
        }
        translate([(-6.5), (-6.5), 0]){
          cylinder(r1=1.85, r2=1.85, h=1.8, center=false);
        }
      }
    }
    translate([0, 0, 2.6]){
      hull(){
        translate([6.5, 6.5, 0]){
          cylinder(r1=1.85, r2=4.1, h=2.15, center=false);
        }
        translate([(-6.5), 6.5, 0]){
          cylinder(r1=1.85, r2=4.1, h=2.15, center=false);
        }
        translate([6.5, (-6.5), 0]){
          cylinder(r1=1.85, r2=4.1, h=2.15, center=false);
        }
        translate([(-6.5), (-6.5), 0]){
          cylinder(r1=1.85, r2=4.1, h=2.15, center=false);
        }
      }
    }
  }
}

Generate = "baseplate";
Generate_Options = len("cup") + len("abc");
width_X = 1;
depth_Y = 4;
height_Z = 2;
pad_base_left = 4.5;
pad_base_right = 4.5;
pad_base_front = 2;
pad_base_rear = 4;
hollow = true;
if (Generate == "cup") {
  difference() {
    union(){
      for (i = [1 : abs(1) : width_X]) {
        for (j = [1 : abs(1) : depth_Y]) {
          translate([(21 * (i - 1)), (21 * (j - 1)), 0]){
            makebase();
          }
        }

      }

      translate([0, 0, 4.75]){
        hull(){
          translate([(6.5 + (width_X - 1) * 21), (6.5 + (depth_Y - 1) * 21), 0]){
            cylinder(r1=3.75, r2=3.75, h=(2.25 + 7 * (height_Z - 1)), center=false);
          }
          translate([(-6.5), (6.5 + (depth_Y - 1) * 21), 0]){
            cylinder(r1=3.75, r2=3.75, h=(2.25 + 7 * (height_Z - 1)), center=false);
          }
          translate([(6.5 + (width_X - 1) * 21), (-6.5), 0]){
            cylinder(r1=3.75, r2=3.75, h=(2.25 + 7 * (height_Z - 1)), center=false);
          }
          translate([(-6.5), (-6.5), 0]){
            cylinder(r1=3.75, r2=3.75, h=(2.25 + 7 * (height_Z - 1)), center=false);
          }
        }
      }
    }

    union(){
      translate([0, 0, (7 * (height_Z - 1) + 4.85)]){
        hull(){
          translate([(6.5 + (width_X - 1) * 21), (6.5 + (depth_Y - 1) * 21), 0]){
            cylinder(r1=1.85, r2=4.2, h=2.2, center=false);
          }
          translate([(-6.5), (6.5 + (depth_Y - 1) * 21), 0]){
            cylinder(r1=1.85, r2=4.2, h=2.2, center=false);
          }
          translate([(6.5 + (width_X - 1) * 21), (-6.5), 0]){
            cylinder(r1=1.85, r2=4.2, h=2.2, center=false);
          }
          translate([(-6.5), (-6.5), 0]){
            cylinder(r1=1.85, r2=4.2, h=2.2, center=false);
          }
        }
      }
      if (hollow == true) {
        translate([0, 0, 7]){
          hull(){
            translate([(6.5 + (width_X - 1) * 21), (6.5 + (depth_Y - 1) * 21), 0]){
              cylinder(r1=1.85, r2=1.85, h=(7 * height_Z), center=false);
            }
            translate([(-6.5), (6.5 + (depth_Y - 1) * 21), 0]){
              cylinder(r1=1.85, r2=1.85, h=(7 * height_Z), center=false);
            }
            translate([(6.5 + (width_X - 1) * 21), (-6.5), 0]){
              cylinder(r1=1.85, r2=1.85, h=(7 * height_Z), center=false);
            }
            translate([(-6.5), (-6.5), 0]){
              cylinder(r1=1.85, r2=1.85, h=(7 * height_Z), center=false);
            }
          }
        }
      }

      translate([0, 0, 7]){
        hull(){
          translate([(6.5 + (width_X - 1) * 21), (6.5 + (depth_Y - 1) * 21), 0]){
            sphere(r=1.85);
          }
          translate([(-6.5), (6.5 + (depth_Y - 1) * 21), 0]){
            sphere(r=1.85);
          }
          translate([(6.5 + (width_X - 1) * 21), (-6.5), 0]){
            sphere(r=1.85);
          }
          translate([(-6.5), (-6.5), 0]){
            sphere(r=1.85);
          }
        }
      }
    }
  }
} else if (Generate == "baseplate") {
  difference() {
    hull(){
      translate([((6.5 + (width_X - 1) * 21) + pad_base_right), ((6.5 + (depth_Y - 1) * 21) + pad_base_rear), 0]){
        cylinder(r1=4, r2=4, h=4.7, center=false);
      }
      translate([(-(6.5 + pad_base_left)), ((6.5 + (depth_Y - 1) * 21) + pad_base_rear), 0]){
        cylinder(r1=4, r2=4, h=4.7, center=false);
      }
      translate([((6.5 + (width_X - 1) * 21) + pad_base_right), (-(6.5 + pad_base_front)), 0]){
        cylinder(r1=4, r2=4, h=4.7, center=false);
      }
      translate([(-(6.5 + pad_base_left)), (-(6.5 + pad_base_front)), 0]){
        cylinder(r1=4, r2=4, h=4.7, center=false);
      }
    }

    for (i = [1 : abs(1) : width_X]) {
      for (j = [1 : abs(1) : depth_Y]) {
        translate([(21 * (i - 1)), (21 * (j - 1)), 0]){
          makerecess();
        }
      }

    }

  }
}
