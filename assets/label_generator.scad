/*
    Creates labels for the diode ring modulator pcb

    Author: Kevin Lutzer
    Date: Sat Sept 10 2022
*/

// generates a rounded box with some text in the center



module generateLabel(width, height, radius, label, ts) {
    $fn=40;

    difference() {
        translate([- width, - height / 2]) {
            minkowski() {
              square([width, height]);
              circle(r=radius);
            }
        }

        text(label, font="Liberation Sans:style=Bold", valign="center", halign="right", size=ts);        
    }       
}

module generateBoardTitle(width, height, radius, ts) {
    $fn=40;

    difference() {
        translate([- width / 2, - height / 2]) {
            minkowski() {
              square([width, height]);
              circle(r=radius);
            }
        }

        translate([-width/2, ts + 0.2])
            text("RF Switchable Attenuator", font="Liberation Sans:style=Bold", valign="center", halign="left", size=ts);
        translate([-width/2, 0])
            text("Kevin Lutzer", font="Liberation Sans:style=Bold", valign="center", halign="left", size=ts);
        translate([-width/2, -(ts + 0.2)])
            text("Revision 1", font="Liberation Sans:style=Bold", valign="center", halign="left", size=ts);
                
    }            
}

// Each label was made with the dimensions of 4mm by 2.666mm 
//generateBoardTitle(20, 5, 0.25, 1.2);
generateLabel(5, 2.5, 0.25, "___dB",  1.2);