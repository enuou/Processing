void setup() {
    String appId = loadStrings("appId.txt")[0];
    JSONObject jobj0 = loadJSONObject("http://statdb.nstac.go.jp/api/1.0b/app/json/getStatsData?appId=" + appId + "&statsDataId=0000030001");
    JSONObject jobj1 = jobj0.getJSONObject("GET_STATS_DATA");
    JSONObject jobj2 = jobj1.getJSONObject("STATISTICAL_DATA");
    JSONObject jobj3 = jobj2.getJSONObject("DATA_INF");
    JSONArray jary1 = jobj3.getJSONArray("VALUE");

    for(int i = 0; i < jary1.size(); i++){
        JSONObject jobj4 = jary1.getJSONObject(i);
        String str1 = jobj4.getString("$");
        println(str1 + "人");
    }
}

