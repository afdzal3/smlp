//Prepare url for web access
//#################################################################################################################
//This is the url for index.do. if you want to generate url for ess.do, please use $L_ess_url instead
if(vars.$L_web_url) {
	var web_url = vars.$L_web_url;
}
else {
	var file_name = system.functions.filename($RECORD);
	var record_name = system.functions.scmsg(file_name,"tablename");
	var record_title = record_name+" "+$RECORD.number;
	var record_query = "number=\""+$RECORD.number+"\"";
	var web_url = lib.urlCreator.getURLFromQuery(file_name,record_query,record_title);
}
var http_url = lib.urlCreator.getRelativeURL();
//#################################################################################################################


//#################################################################################################################
//Generate Impact, Urgency, and Priority readable label

var _priority = $RECORD.priority_code;
var _severity = $RECORD.severity;
var _impact = $RECORD.initial_impact;
var brief_description = $RECORD.brief_description.replace(/\^/g, '');
var priority = lib.htmlemailtemplates.getPriorityString(_priority);
var severity = lib.htmlemailtemplates.getSeverityString(_severity);
var impact   = lib.htmlemailtemplates.getImpactString(_impact);


//#################################################################################################################
//#################################################################################################################
//Check if system require fulll operator name and if need append timezone to date time.
var operator = system.vars.$lo_user_name;
if(system.vars.$G_pm_global_environment.full_name && system.vars.$lo_user_name) {
   operator = system.vars.$lo_user_name;
}
else {
   operator = system.vars.$lo_ufname;
}

if (!operator) {
  operator = $RECORD['updated.by'];
}
   
var timestring = "";
var timezone = "";
if(system.vars.$G_pm_global_environment.exit) {
  timestring = system.vars.$lo_time_zone;
  timezone = timestring;
}

if(timestring) {
	timestring = timestring +" ";
}

timestring = timestring +system.functions.str(system.functions.tod()) + ":";
//#################################################################################################################

 
var affected_item_disp_new= system.functions.get_display_value($RECORD, "affected.item",-1,true);