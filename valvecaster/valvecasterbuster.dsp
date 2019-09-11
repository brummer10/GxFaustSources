// generated automatically
// DO NOT MODIFY!
declare id "valvecasterbuster";
declare name "valvecasterbuster";
declare category "Extern";
declare shortname "valvecasterbuster";
declare description "valvecasterbuster";

import("stdfaust.lib");

process = pre : fi.iir((b0/a0,b1/a0,b2/a0),(a1/a0,a2/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;

    
        
        Gain = vslider("Gain[name:Gain]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);
            
    b0 = -8.04348532262441e-9*Gain*pow(fs,2);

    b1 = 1.60869706452488e-8*Gain*pow(fs,2);

    b2 = -8.04348532262441e-9*Gain*pow(fs,2);

    a0 = fs*(4.30050024066113e-10*fs + 1.90510118046938e-7) + 2.02588854219675e-5;

    a1 = -8.60100048132227e-10*pow(fs,2) + 4.05177708439351e-5;

    a2 = fs*(4.30050024066113e-10*fs - 1.90510118046938e-7) + 2.02588854219675e-5;
};
