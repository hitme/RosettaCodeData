import std.stdio, std.math;

real haversineDistance(in real dth1, in real dph1,
                       in real dth2, in real dph2) pure nothrow {

    enum real R = 6371;
    enum real TO_RAD = PI / 180;

    alias imr = immutable(real);
    imr ph1d = dph1 - dph2;
    imr ph1 = ph1d * TO_RAD;
    imr th1 = dth1 * TO_RAD;
    imr th2 = dth2 * TO_RAD;

    imr dz = sin(th1) - sin(th2);
    imr dx = cos(ph1) * cos(th1) - cos(th2);
    imr dy = sin(ph1) * cos(th1);
    return asin(sqrt(dx ^^ 2 + dy ^^ 2 + dz ^^ 2) / 2) * 2 * R;
}

void main() {
    writefln("Haversine distance: %.1f km",
             haversineDistance(36.12, -86.67, 33.94, -118.4));
}
