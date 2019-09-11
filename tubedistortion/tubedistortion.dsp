// generated automatically
// DO NOT MODIFY!
declare id "tubedistortion";
declare name "TubeDistortion";
declare category "Extern";
declare shortname "TubeDistortion";
declare description "TubeDistortion";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    Input = vslider("Input[name:Input]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(2) : si.smooth(s);

    b0 = 0.000460667009322669*Input*fs + 4.65320211437037e-6*fs;

    b1 = -0.000460667009322669*Input*fs - 4.65320211437037e-6*fs;

    a0 = 2.08116545265349e-5*fs + 0.00104058272632674;

    a1 = -2.08116545265349e-5*fs + 0.00104058272632674;
};

p2 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) : clip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    b0 = 6.0186829066331e-5*fs;

    b1 = -6.0186829066331e-5*fs;

    a0 = 2.08120570954782e-5*fs + 0.00102125941704517;

    a1 = -2.08120570954782e-5*fs + 0.00102125941704517;
};

    clip = ffunction(float circclip(float), "tubedistortion_table.h", "");

p3 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Output = vslider("Output[name:Output]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = 2.07902286923077e-5*Output*fs;

    b1 = -2.07902286923077e-5*Output*fs;

    a0 = 2.07900207900208e-5*fs + 0.00207900207900208;

    a1 = -2.07900207900208e-5*fs + 0.00207900207900208;
};

process =  p1 : p2 : p3 ;