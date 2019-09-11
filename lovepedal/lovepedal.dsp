// generated automatically
// DO NOT MODIFY!
declare id "lovepedal";
declare name "lovepedal";
declare category "Extern";
declare shortname "lovepedal";
declare description "lovepedal";
declare samplerate "96000";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) : lovepedalclip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Drive = vslider("Drive[name:Drive]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = Drive*fs*(fs*(5.81646530253075e-16*fs + 7.43406787548609e-10) + 4.15058185901317e-10) + fs*(fs*(2.3265861210123e-17*fs + 4.21117295924353e-11) + 7.5192731544727e-9);

    b1 = Drive*fs*(-1.16329306050615e-15*pow(fs,2) + 8.30116371802634e-10) + fs*(-4.6531722420246e-17*pow(fs,2) + 1.50385463089454e-8);

    b2 = -1.48681357509722e-9*Drive*pow(fs,2) - 8.42234591848707e-11*pow(fs,2);

    b3 = Drive*fs*(1.16329306050615e-15*pow(fs,2) - 8.30116371802634e-10) + fs*(4.6531722420246e-17*pow(fs,2) - 1.50385463089454e-8);

    b4 = Drive*fs*(fs*(-5.81646530253075e-16*fs + 7.43406787548609e-10) - 4.15058185901317e-10) + fs*(fs*(-2.3265861210123e-17*fs + 4.21117295924353e-11) - 7.5192731544727e-9);

    a0 = Drive*(fs*(fs*(fs*(1.74496147075981e-19*fs + 8.97219720380579e-16) + 1.18067847309604e-12) + 4.32095947943305e-10) + 9.29593259492128e-9) + fs*(fs*(fs*(6.97984588303922e-21*fs + 3.74857276915524e-15) + 1.47069414495405e-11) + 7.68136449511157e-9) + 1.68406885543421e-7;

    a1 = Drive*(fs*(pow(fs,2)*(-6.97984588303922e-19*fs - 1.79443944076116e-15) + 8.6419189588661e-10) + 3.71837303796851e-8) + fs*(pow(fs,2)*(-2.79193835321569e-20*fs - 7.49714553831047e-15) + 1.53627289902231e-8) + 6.73627542173684e-7;

    a2 = Drive*(pow(fs,2)*(1.04697688245588e-18*pow(fs,2) - 2.36135694619208e-12) + 5.57755955695277e-8) + pow(fs,2)*(4.18790752982353e-20*pow(fs,2) - 2.94138828990809e-11) + 1.01044131326053e-6;

    a3 = Drive*(fs*(pow(fs,2)*(-6.97984588303922e-19*fs + 1.79443944076116e-15) - 8.6419189588661e-10) + 3.71837303796851e-8) + fs*(pow(fs,2)*(-2.79193835321569e-20*fs + 7.49714553831047e-15) - 1.53627289902231e-8) + 6.73627542173684e-7;

    a4 = Drive*(fs*(fs*(fs*(1.74496147075981e-19*fs - 8.97219720380579e-16) + 1.18067847309604e-12) - 4.32095947943305e-10) + 9.29593259492128e-9) + fs*(fs*(fs*(6.97984588303922e-21*fs - 3.74857276915524e-15) + 1.47069414495405e-11) - 7.68136449511157e-9) + 1.68406885543421e-7;
};

lovepedalclip = _<: ba.if(signbit(_), lovepedal_neg_clip, lovepedal_clip) :>_ with {

    signbit = ffunction(int signbit(float), "math.h", "");

    lovepedal_clip = ffunction(float lovepedalclip(float), "lovepedal_table.h", "");

    lovepedal_neg_clip = ffunction(float lovepedal_negclip(float), "lovepedal_neg_table.h", "");

};

p2 = pre : fi.iir((b0/a0,b1/a0,b2/a0),(a1/a0,a2/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Level = vslider("Level[name:Level]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);


    Glass = vslider("Glass[name:Glass]", 0.5, 0, 1, 0.01) : Inverted(1) : si.smooth(s);

    b0 = Glass*(-1.33352199170344e-9*Glass*Level*pow(fs,2) + 1.06681759336275e-9*Level*pow(fs,2)) + Level*fs*(3.54716849793116e-10*fs + 6.06146359865201e-7);

    b1 = Glass*(2.66704398340689e-9*Glass*Level*pow(fs,2) - 2.13363518672551e-9*Level*pow(fs,2)) - 7.09433699586232e-10*Level*pow(fs,2);

    b2 = Glass*(-1.33352199170344e-9*Glass*Level*pow(fs,2) + 1.06681759336275e-9*Level*pow(fs,2)) + Level*fs*(3.54716849793116e-10*fs - 6.06146359865201e-7);

    a0 = Glass*(Glass*fs*(-1.33353532692336e-9*fs - 1.33353532692336e-10) + fs*(1.33353265987938e-9*fs + 1.33353265987938e-10)) + fs*(8.80161746458281e-11*fs + 6.06162435238984e-7) + 6.0615363362152e-8;

    a1 = Glass*(2.66707065384672e-9*Glass*pow(fs,2) - 2.66706531975875e-9*pow(fs,2)) - 1.76032349291656e-10*pow(fs,2) + 1.21230726724304e-7;

    a2 = Glass*(Glass*fs*(-1.33353532692336e-9*fs + 1.33353532692336e-10) + fs*(1.33353265987938e-9*fs - 1.33353265987938e-10)) + fs*(8.80161746458281e-11*fs - 6.06162435238984e-7) + 6.0615363362152e-8;
};

process =  p1 : p2 ;