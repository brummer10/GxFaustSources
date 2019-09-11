
// unicab_p3_neg_table generated by DK/circ_table_gen.py -- do not modify manually

 // variables used
 // --sig_max  -1.400000
 // --table_div  8.991319
 // --table_op  1.000000

struct tableunicab_p3_neg { // 1-dimensional function table
    float low;
    float high;
    float istep;
    int size;
    float data[];
};

template <int tab_size>
struct tableunicab_p3_neg_imp {
    float low;
    float high;
    float istep;
    int size;
    float data[tab_size];
    operator tableunicab_p3_neg&() const { return *(tableunicab_p3_neg*)this; }
};

 static tableunicab_p3_neg_imp<200> unicab_p3_neg_table __rt_data = {
	0,-0.833333,142.143,200, {
	0.000000000000,-0.000899502360,-0.002164350027,-0.003772992560,-0.005705018295,
	-0.007941091599,-0.010462893798,-0.013253067539,-0.016295164395,-0.019573595505,
	-0.023073585075,-0.026781126558,-0.030682941363,-0.034766439933,-0.039019685051,
	-0.043431357243,-0.047990722147,-0.052687599742,-0.057512335309,-0.062455772034,
	-0.067509225149,-0.072664457523,-0.077913656614,-0.083249412701,-0.088664698325,
	-0.094152848859,-0.099707544147,-0.105322791153,-0.110992907550,-0.116712506195,
	-0.122476480453,-0.128279990301,-0.134118449180,-0.139987511544,-0.145883061072,
	-0.151801199495,-0.157738236019,-0.163690677292,-0.169655217891,-0.175628731306,
	-0.181608261384,-0.187591014205,-0.193574350380,-0.199555777727,-0.205532944326,
	-0.211503631908,-0.217465749579,-0.223417327857,-0.229356512991,-0.235281561564,
	-0.241190835354,-0.247082796444,-0.252956002568,-0.258809102668,-0.264640832674,
	-0.270450011473,-0.276235537069,-0.281996382921,-0.287731594451,-0.293440285707,
	-0.299121636182,-0.304774887778,-0.310399341903,-0.315994356700,-0.321559344397,
	-0.327093768777,-0.332597142757,-0.338069026076,-0.343509023077,-0.348916780593,
	-0.354291985920,-0.359634364875,-0.364943679940,-0.370219728486,-0.375462341066,
	-0.380671379786,-0.385846736744,-0.390988332530,-0.396096114790,-0.401170056853,
	-0.406210156414,-0.411216434265,-0.416188933086,-0.421127716284,-0.426032866877,
	-0.430904486426,-0.435742694009,-0.440547625239,-0.445319431321,-0.450058278148,
	-0.454764345434,-0.459437825879,-0.464078924377,-0.468687857244,-0.473264851489,
	-0.477810144108,-0.482323981412,-0.486806618376,-0.491258318021,-0.495679350820,
	-0.500069994128,-0.504430531636,-0.508761252846,-0.513062452573,-0.517334430466,
	-0.521577490544,-0.525791940760,-0.529978092580,-0.534136260582,-0.538266762066,
	-0.542369916692,-0.546446046127,-0.550495473704,-0.554518524112,-0.558515523078,
	-0.562486797084,-0.566432673087,-0.570353478250,-0.574249539693,-0.578121184252,
	-0.581968738250,-0.585792527280,-0.589592875999,-0.593370107932,-0.597124545286,
	-0.600856508773,-0.604566317448,-0.608254288545,-0.611920737335,-0.615565976981,
	-0.619190318408,-0.622794070181,-0.626377538385,-0.629941026514,-0.633484835375,
	-0.637009262989,-0.640514604500,-0.644001152095,-0.647469194925,-0.650919019037,
	-0.654350907306,-0.657765139376,-0.661161991603,-0.664541737008,-0.667904645230,
	-0.671250982485,-0.674581011530,-0.677894991632,-0.681193178538,-0.684475824451,
	-0.687743178012,-0.690995484277,-0.694232984711,-0.697455917172,-0.700664515905,
	-0.703859011540,-0.707039631085,-0.710206597936,-0.713360131870,-0.716500449061,
	-0.719627762082,-0.722742279919,-0.725844207984,-0.728933748127,-0.732011098656,
	-0.735076454356,-0.738130006505,-0.741171942902,-0.744202447885,-0.747221702360,
	-0.750229883826,-0.753227166402,-0.756213720857,-0.759189714639,-0.762155311906,
	-0.765110673560,-0.768055957278,-0.770991317544,-0.773916905689,-0.776832869922,
	-0.779739355367,-0.782636504099,-0.785524455183,-0.788403344710,-0.791273305836,
	-0.794134468821,-0.796986961064,-0.799830907149,-0.802666428877,-0.805493645312,
	-0.808312672816,-0.811123625093,-0.813926613224,-0.816721745713,-0.819509128522,
	-0.822288865115,-0.825061056494,-0.827825801245,-0.830583195570,-0.833333333333
	}
};

double always_inline unicab_p3_negclip(double x) {
    double f = fabs(x);
    f = f * unicab_p3_neg_table.istep;
    int i = static_cast<int>(f);
    if (i < 0) {
        f = unicab_p3_neg_table.data[0];
    } else if (i >= unicab_p3_neg_table.size-1) {
        f = unicab_p3_neg_table.data[unicab_p3_neg_table.size-1];
    } else {
    f -= i;
    f = unicab_p3_neg_table.data[i]*(1-f) + unicab_p3_neg_table.data[i+1]*f;
    }
    return copysign(f, x);
}
