
// plexipoweramp_table generated by DK/circ_table_gen.py -- do not modify manually

 // variables used
 // --sig_max  3.000000
 // --table_div  1.535615
 // --table_op  1.000000

struct tableplexipoweramp { // 1-dimensional function table
    float low;
    float high;
    float istep;
    int size;
    float data[];
};

template <int tab_size>
struct tableplexipoweramp_imp {
    float low;
    float high;
    float istep;
    int size;
    float data[tab_size];
    operator tableplexipoweramp&() const { return *(tableplexipoweramp*)this; }
};

 static tableplexipoweramp_imp<200> plexipoweramp_table __rt_data = {
	0,0.833333,66.3333,200, {
	0.000000000000,0.016479155108,0.032926857053,0.049324919517,0.065656613540,
	0.081906573798,0.098060710708,0.114106127706,0.130031043671,0.145824720134,
	0.161477392775,0.176980207380,0.192325159333,0.207505037221,0.222513369556,
	0.237344375077,0.251992915801,0.266454453282,0.280725007273,0.294801117212,
	0.308679805866,0.322358545450,0.335835225645,0.349108123792,0.362175876810,
	0.375037455023,0.387692137513,0.400139489024,0.412379338427,0.424411758522,
	0.436237047016,0.447855708921,0.459268439870,0.470476110625,0.481479752609,
	0.492280544313,0.502879798605,0.513278950841,0.523479547906,0.533483237749,
	0.543291759794,0.552906935938,0.562330662129,0.571564900529,0.580611672267,
	0.589473050565,0.598151154467,0.606648142913,0.614966209307,0.623107576377,
	0.631074491475,0.638869222205,0.646494052302,0.653951277924,0.661243204132,
	0.668372141637,0.675340403864,0.682150304166,0.688804153285,0.695304257032,
	0.701652914107,0.707852414137,0.713905035881,0.719813045534,0.725578695247,
	0.731204221729,0.736691844981,0.742043767185,0.747262171645,0.752349221871,
	0.757307060745,0.762137809778,0.766843568428,0.771426413530,0.775888398781,
	0.780231554271,0.784457886115,0.788569376108,0.792567981455,0.796455634529,
	0.800234242709,0.803905688213,0.807471828014,0.810934493768,0.814295491780,
	0.817556603000,0.820719583057,0.823786162306,0.826758045903,0.829636913904,
	0.832424421389,0.835122198597,0.837731851072,0.840254959846,0.842693081612,
	0.845047748924,0.847320470403,0.849512730959,0.851625992012,0.853661691729,
	0.855621245272,0.857506045038,0.859317460922,0.861056840571,0.862725509652,
	0.864324772116,0.865855910474,0.867320186062,0.868718839325,0.870053090087,
	0.871324137830,0.872533161978,0.873681322170,0.874769758537,0.875799591987,
	0.876771924477,0.877687839292,0.878548401324,0.879354657339,0.880107636255,
	0.880808349413,0.881457790843,0.882056937537,0.882606749703,0.883108171039,
	0.883562128986,0.883969534992,0.884331284756,0.884648258490,0.884921321167,
	0.885151322760,0.885339098499,0.885485469096,0.885591240994,0.885657206598,
	0.885684144506,0.885672819740,0.885623983965,0.885538375723,0.885416720639,
	0.885259731649,0.885068109201,0.884842541477,0.884583704596,0.884292262811,
	0.883968868719,0.883614163454,0.883228776885,0.882813327802,0.882368424113,
	0.881894663021,0.881392631215,0.880862905043,0.880306050700,0.879722624383,
	0.879113172487,0.878478231751,0.877818329441,0.877133983503,0.876425702729,
	0.875693986913,0.874939327003,0.874162205265,0.873363095419,0.872542462794,
	0.871700764474,0.870838449441,0.869955958707,0.869053725468,0.868132175223,
	0.867191725920,0.866232788079,0.865255764921,0.864261052506,0.863249039840,
	0.862220109014,0.861174635310,0.860112987332,0.859035527111,0.857942610230,
	0.856834585925,0.855711797205,0.854574580954,0.853423268042,0.852258183424,
	0.851079646253,0.849887969967,0.848683462399,0.847466425874,0.846237157298,
	0.844995948261,0.843743085123,0.842478849105,0.841203516384,0.839917358178,
	0.838620640832,0.837313625898,0.835996570230,0.834669726055,0.833333341058
	}
};

double always_inline plexipowerampclip(double x) {
    double f = fabs(x);
    f = f * plexipoweramp_table.istep;
    int i = static_cast<int>(f);
    if (i < 0) {
        f = plexipoweramp_table.data[0];
    } else if (i >= plexipoweramp_table.size-1) {
        f = plexipoweramp_table.data[plexipoweramp_table.size-1];
    } else {
    f -= i;
    f = plexipoweramp_table.data[i]*(1-f) + plexipoweramp_table.data[i+1]*f;
    }
    return copysign(f, x);
}
