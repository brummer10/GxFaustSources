// generated automatically
// DO NOT MODIFY!
declare id "sarrisbluesamp";
declare name "sarrisbluesamp";
declare category "Extern";
declare shortname "sarrisbluesamp";
declare description "sarrisbluesamp";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) : sarrisbluesamp_clip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    Volume = vslider("Volume[name:Volume]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);

    Tone = vslider("Tone[name:Tone]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);

    b0 = Tone*(Tone*Volume*pow(fs,3)*(2.13587434284837e-17*fs + 2.84783245713118e-16) + Volume*(Volume*pow(fs,3)*(2.13587434284837e-17*fs + 2.84783245713118e-16) + pow(fs,2)*(fs*(-4.27174868569674e-17*fs - 1.01810010342439e-14) - 1.28152460570903e-13))) + Volume*(Volume*pow(fs,2)*(1.06793717142419e-15*fs + 1.42391622856559e-14) + fs*(fs*(-2.13587434284837e-15*fs - 5.62446910283405e-13) - 7.11958114282795e-12));

    b1 = Tone*(Tone*Volume*pow(fs,3)*(-8.54349737139349e-17*fs - 5.69566491426236e-16) + Volume*(Volume*pow(fs,3)*(-8.54349737139349e-17*fs - 5.69566491426236e-16) + pow(fs,3)*(1.7086994742787e-16*fs + 2.03620020684878e-14))) + Volume*(-2.13587434284837e-15*Volume*pow(fs,3) + fs*(4.27174868569674e-15*pow(fs,2) - 1.42391622856559e-11));

    b2 = Tone*(1.28152460570902e-16*Tone*Volume*pow(fs,4) + Volume*(1.28152460570902e-16*Volume*pow(fs,4) + pow(fs,2)*(-2.56304921141805e-16*pow(fs,2) + 2.56304921141806e-13))) + Volume*(-2.84783245713118e-14*Volume*pow(fs,2) + 1.12489382056681e-12*pow(fs,2));

    b3 = Tone*(Tone*Volume*pow(fs,3)*(-8.54349737139349e-17*fs + 5.69566491426236e-16) + Volume*(Volume*pow(fs,3)*(-8.54349737139349e-17*fs + 5.69566491426236e-16) + pow(fs,3)*(1.7086994742787e-16*fs - 2.03620020684878e-14))) + Volume*(2.13587434284837e-15*Volume*pow(fs,3) + fs*(-4.27174868569674e-15*pow(fs,2) + 1.42391622856559e-11));

    b4 = Tone*(Tone*Volume*pow(fs,3)*(2.13587434284837e-17*fs - 2.84783245713118e-16) + Volume*(Volume*pow(fs,3)*(2.13587434284837e-17*fs - 2.84783245713118e-16) + pow(fs,2)*(fs*(-4.27174868569674e-17*fs + 1.01810010342439e-14) - 1.28152460570903e-13))) + Volume*(Volume*pow(fs,2)*(-1.06793717142419e-15*fs + 1.42391622856559e-14) + fs*(fs*(2.13587434284837e-15*fs - 5.62446910283405e-13) + 7.11958114282795e-12));

    a0 = Tone*(Tone*pow(fs,2)*(fs*(-3.58124850471912e-19*fs - 2.68581306768759e-17) - 4.4701668410054e-16) + Volume*pow(fs,2)*(fs*(-2.29233450737195e-20*fs - 3.58355939897302e-17) - 8.94033368201079e-16) + fs*(fs*(fs*(3.69586523008772e-19*fs + 2.05932110384102e-16) + 1.29801921727952e-14) + 2.01157507845243e-13)) + Volume*(Volume*pow(fs,2)*(fs*(-3.58124850471912e-19*fs - 2.17522878541155e-16) - 5.36420020920647e-15) + fs*(fs*(fs*(3.69586523008772e-19*fs + 2.40598428177607e-16) + 1.38742255409963e-14) + 2.01157507845243e-13)) + fs*(fs*(1.84793261504386e-17*fs + 1.11919176453849e-14) + 7.16154935331951e-13) + 1.11754171025135e-11;

    a1 = Tone*(Tone*pow(fs,3)*(1.43249940188765e-18*fs + 5.37162613537518e-17) + Volume*pow(fs,3)*(9.16933802948782e-20*fs + 7.16711879794604e-17) + fs*(pow(fs,2)*(-1.47834609203509e-18*fs - 4.11864220768203e-16) + 4.02315015690486e-13)) + Volume*(Volume*pow(fs,3)*(1.43249940188765e-18*fs + 4.3504575708231e-16) + fs*(pow(fs,2)*(-1.47834609203509e-18*fs - 4.81196856355214e-16) + 4.02315015690486e-13)) + fs*(-3.69586523008772e-17*pow(fs,2) + 1.4323098706639e-12) + 4.4701668410054e-11;

    a2 = Tone*(Tone*pow(fs,2)*(-2.14874910283147e-18*pow(fs,2) + 8.94033368201079e-16) + Volume*pow(fs,2)*(-1.37540070442317e-19*pow(fs,2) + 1.78806673640216e-15) + pow(fs,2)*(2.21751913805263e-18*pow(fs,2) - 2.59603843455905e-14)) + Volume*(Volume*pow(fs,2)*(-2.14874910283147e-18*pow(fs,2) + 1.07284004184129e-14) + pow(fs,2)*(2.21751913805263e-18*pow(fs,2) - 2.77484510819926e-14)) - 2.23838352907697e-14*pow(fs,2) + 6.70525026150809e-11;

    a3 = Tone*(Tone*pow(fs,3)*(1.43249940188765e-18*fs - 5.37162613537518e-17) + Volume*pow(fs,3)*(9.16933802948782e-20*fs - 7.16711879794604e-17) + fs*(pow(fs,2)*(-1.47834609203509e-18*fs + 4.11864220768203e-16) - 4.02315015690486e-13)) + Volume*(Volume*pow(fs,3)*(1.43249940188765e-18*fs - 4.3504575708231e-16) + fs*(pow(fs,2)*(-1.47834609203509e-18*fs + 4.81196856355214e-16) - 4.02315015690486e-13)) + fs*(3.69586523008772e-17*pow(fs,2) - 1.4323098706639e-12) + 4.4701668410054e-11;

    a4 = Tone*(Tone*pow(fs,2)*(fs*(-3.58124850471912e-19*fs + 2.68581306768759e-17) - 4.4701668410054e-16) + Volume*pow(fs,2)*(fs*(-2.29233450737195e-20*fs + 3.58355939897302e-17) - 8.94033368201079e-16) + fs*(fs*(fs*(3.69586523008772e-19*fs - 2.05932110384102e-16) + 1.29801921727952e-14) - 2.01157507845243e-13)) + Volume*(Volume*pow(fs,2)*(fs*(-3.58124850471912e-19*fs + 2.17522878541155e-16) - 5.36420020920647e-15) + fs*(fs*(fs*(3.69586523008772e-19*fs - 2.40598428177607e-16) + 1.38742255409963e-14) - 2.01157507845243e-13)) + fs*(fs*(-1.84793261504386e-17*fs + 1.11919176453849e-14) - 7.16154935331951e-13) + 1.11754171025135e-11;
};

    sarrisbluesamp_clip = ffunction(float sarrisbluesampclip(float), "sarrisbluesamp_table.h", "");

p2 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    Master = vslider("Master[name:Master]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);

    b0 = Master*pow(fs,2)*(fs*(1.57129335819746e-19*fs + 5.23901537288067e-14) + 4.56948518622932e-12);

    b1 = Master*pow(fs,3)*(-6.28517343278984e-19*fs - 1.04780307457613e-13);

    b2 = Master*pow(fs,2)*(9.42776014918475e-19*pow(fs,2) - 9.13897037245864e-12);

    b3 = Master*pow(fs,3)*(-6.28517343278984e-19*fs + 1.04780307457613e-13);

    b4 = Master*pow(fs,2)*(fs*(1.57129335819746e-19*fs - 5.23901537288067e-14) + 4.56948518622932e-12);

    a0 = fs*(fs*(fs*(1.26524622292948e-20*fs + 8.41435872667002e-15) + 9.87115677107219e-13) + 8.17135818359315e-12) + 1.74773482485136e-11;

    a1 = fs*(pow(fs,2)*(-5.06098489171792e-20*fs - 1.682871745334e-14) + 1.63427163671863e-11) + 6.99093929940545e-11;

    a2 = pow(fs,2)*(7.59147733757688e-20*pow(fs,2) - 1.97423135421444e-12) + 1.04864089491082e-10;

    a3 = fs*(pow(fs,2)*(-5.06098489171792e-20*fs + 1.682871745334e-14) - 1.63427163671863e-11) + 6.99093929940545e-11;

    a4 = fs*(fs*(fs*(1.26524622292948e-20*fs - 8.41435872667002e-15) + 9.87115677107219e-13) - 8.17135818359315e-12) + 1.74773482485136e-11;
};

p3 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0,b5/a0),(a1/a0,a2/a0,a3/a0,a4/a0,a5/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    b0 = fs*(fs*(9.5567872929825e-15*fs + 1.88950987071309e-10) + 8.23102999954187e-8);

    b1 = fs*(fs*(-9.5567872929825e-15*fs + 1.88950987071309e-10) + 2.46930899986256e-7);

    b2 = fs*(fs*(-1.9113574585965e-14*fs - 3.77901974142617e-10) + 1.64620599990837e-7);

    b3 = fs*(fs*(1.9113574585965e-14*fs - 3.77901974142617e-10) - 1.64620599990837e-7);

    b4 = fs*(fs*(9.5567872929825e-15*fs + 1.88950987071309e-10) - 2.46930899986256e-7);

    b5 = fs*(fs*(-9.5567872929825e-15*fs + 1.88950987071309e-10) - 8.23102999954187e-8);

    a0 = fs*(fs*(fs*(fs*(1.35699755585185e-25*fs + 4.09580555708428e-20) + 4.04151413821468e-15) + 1.30059353723506e-10) + 2.86554784737025e-8) + 9.4207799805971e-6;

    a1 = fs*(fs*(fs*(fs*(-6.78498777925925e-25*fs - 1.22874166712528e-19) - 4.04151413821468e-15) + 1.30059353723506e-10) + 8.59664354211076e-8) + 4.71038999029855e-5;

    a2 = fs*(fs*(fs*(fs*(1.35699755585185e-24*fs + 8.19161111416856e-20) - 8.08302827642936e-15) - 2.60118707447012e-10) + 5.73109569474051e-8) + 9.4207799805971e-5;

    a3 = fs*(fs*(fs*(fs*(-1.35699755585185e-24*fs + 8.19161111416856e-20) + 8.08302827642936e-15) - 2.60118707447012e-10) - 5.73109569474051e-8) + 9.4207799805971e-5;

    a4 = fs*(fs*(fs*(fs*(6.78498777925925e-25*fs - 1.22874166712528e-19) + 4.04151413821468e-15) + 1.30059353723506e-10) - 8.59664354211076e-8) + 4.71038999029855e-5;

    a5 = fs*(fs*(fs*(fs*(-1.35699755585185e-25*fs + 4.09580555708428e-20) - 4.04151413821468e-15) + 1.30059353723506e-10) - 2.86554784737025e-8) + 9.4207799805971e-6;
};

p4 = pre : fi.iir((b0/a0,b1/a0,b2/a0),(a1/a0,a2/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    b0 = 3.40881031364466e-6*fs;

    b1 = 0;

    b2 = -3.40881031364466e-6*fs;

    a0 = fs*(2.55663330131086e-10*fs + 8.54535312529053e-6) + 0.000774737364033594;

    a1 = -5.11326660262171e-10*pow(fs,2) + 0.00154947472806719;

    a2 = fs*(2.55663330131086e-10*fs - 8.54535312529053e-6) + 0.000774737364033594;
};

process =  p1 : p2 : p3 : p4 ;