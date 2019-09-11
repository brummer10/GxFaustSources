// generated automatically
// DO NOT MODIFY!
declare id "bajatubedriver";
declare name "BaJaTubeDriver";
declare category "Extern";
declare shortname "BaJaTubeDriver";
declare description "BaJaTubeDriver";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0,b5/a0),(a1/a0,a2/a0,a3/a0,a4/a0,a5/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    Drive = vslider("Drive[name:Drive]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);

    b0 = -5.60218240747454e-13*Drive*pow(fs,3) - 1.12043648149491e-14*pow(fs,3);

    b1 = 5.60218240747454e-13*Drive*pow(fs,3) + 1.12043648149491e-14*pow(fs,3);

    b2 = 1.12043648149491e-12*Drive*pow(fs,3) + 2.24087296298981e-14*pow(fs,3);

    b3 = -1.12043648149491e-12*Drive*pow(fs,3) - 2.24087296298981e-14*pow(fs,3);

    b4 = -5.60218240747454e-13*Drive*pow(fs,3) - 1.12043648149491e-14*pow(fs,3);

    b5 = 5.60218240747454e-13*Drive*pow(fs,3) + 1.12043648149491e-14*pow(fs,3);

    a0 = Drive*fs*(fs*(fs*(fs*(1.45284077923968e-26*fs + 2.69471797250462e-19) + 6.97522236873734e-17) + 7.18708786341519e-16) + 8.74279694529759e-17) + fs*(fs*(fs*(fs*(2.90568155847935e-28*fs + 5.51050600994588e-21) + 2.24699083136596e-15) + 5.34477320715169e-13) + 5.48146563373846e-12) + 6.15690879602922e-13;

    a1 = Drive*fs*(fs*(fs*(fs*(-7.26420389619839e-26*fs - 8.08415391751386e-19) - 6.97522236873734e-17) + 7.18708786341519e-16) + 2.62283908358928e-16) + fs*(fs*(fs*(fs*(-1.45284077923968e-27*fs - 1.65315180298376e-20) - 2.24699083136596e-15) + 5.34477320715169e-13) + 1.64443969012154e-11) + 3.07845439801461e-12;

    a2 = Drive*fs*(fs*(fs*(fs*(1.45284077923968e-25*fs + 5.38943594500924e-19) - 1.39504447374747e-16) - 1.43741757268304e-15) + 1.74855938905952e-16) + fs*(fs*(fs*(fs*(2.90568155847935e-27*fs + 1.10210120198918e-20) - 4.49398166273193e-15) - 1.06895464143034e-12) + 1.09629312674769e-11) + 6.15690879602922e-12;

    a3 = Drive*fs*(fs*(fs*(fs*(-1.45284077923968e-25*fs + 5.38943594500924e-19) + 1.39504447374747e-16) - 1.43741757268304e-15) - 1.74855938905952e-16) + fs*(fs*(fs*(fs*(-2.90568155847935e-27*fs + 1.10210120198918e-20) + 4.49398166273193e-15) - 1.06895464143034e-12) - 1.09629312674769e-11) + 6.15690879602922e-12;

    a4 = Drive*fs*(fs*(fs*(fs*(7.26420389619839e-26*fs - 8.08415391751386e-19) + 6.97522236873734e-17) + 7.18708786341519e-16) - 2.62283908358928e-16) + fs*(fs*(fs*(fs*(1.45284077923968e-27*fs - 1.65315180298376e-20) + 2.24699083136596e-15) + 5.34477320715169e-13) - 1.64443969012154e-11) + 3.07845439801461e-12;

    a5 = Drive*fs*(fs*(fs*(fs*(-1.45284077923968e-26*fs + 2.69471797250462e-19) - 6.97522236873734e-17) + 7.18708786341519e-16) - 8.74279694529759e-17) + fs*(fs*(fs*(fs*(-2.90568155847935e-28*fs + 5.51050600994588e-21) - 2.24699083136596e-15) + 5.34477320715169e-13) - 5.48146563373846e-12) + 6.15690879602922e-13;
};

p2 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) : bajatubedriverclip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    b0 = 2.64722259803455e-5*fs;

    b1 = -2.64722259803455e-5*fs;

    a0 = 2.0682972551596e-5*fs + 0.00721731752339018;

    a1 = -2.0682972551596e-5*fs + 0.00721731752339018;
};

bajatubedriverclip = _<: ba.if(signbit(_), bajatubedriver_neg_clip, bajatubedriver_clip) :>_ with {

    signbit = ffunction(int signbit(float), "math.h", "");

    bajatubedriver_clip = ffunction(float bajatubedriverclip(float), "bajatubedriver_table.h", "");

    bajatubedriver_neg_clip = ffunction(float bajatubedriver_negclip(float), "bajatubedriver_neg_table.h", "");

};

p3 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Tone = vslider("Tone[name:Tone]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = 2.03816131830009e-5*Tone*fs + 0.0216825672159584;

    b1 = -2.03816131830009e-5*Tone*fs + 0.0216825672159584;

    a0 = 2.03816131830009e-5*fs + 0.0216825672159584;

    a1 = -2.03816131830009e-5*fs + 0.0216825672159584;
};

p4 = pre : fi.iir((b0/a0,b1/a0),(a1/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Volume = vslider("Volume[name:Volume]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = Volume*(0.488938774271564*Volume - 1.61349795509616) - 0.166239183252332;

    b1 = Volume*(0.488938774271564*Volume - 1.61349795509616) - 0.166239183252332;

    a0 = Volume*(Volume*(-2.24914085283282e-6*fs - 0.112461932029384) + 2.6891901501262e-6*fs - 0.99009478393055) + 2.91410423540948e-7*fs + 1.47162430127362;

    a1 = Volume*(Volume*(2.24914085283282e-6*fs - 0.112461932029384) - 2.6891901501262e-6*fs - 0.99009478393055) - 2.91410423540948e-7*fs + 1.47162430127362;
};

process =  p1 : p2 : p3 : p4 ;