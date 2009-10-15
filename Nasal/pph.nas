# =====================
# gph -> pph by Helijah
# =====================

var loop = func {

  var FuelDensity=props.globals.getNode("consumables/fuel/tank[0]/density-ppg",1).getValue();
  if(FuelDensity == nil){FuelDensity = 6.72};
  var pph=getprop("/engines/engine[0]/fuel-flow-gph");
  if(pph == nil){pph = 0.0};
  setprop("/engines/engine[0]/fuel-flow-gph", pph * FuelDensity );

  var poundperhour = sprintf("%05.f", getprop("/engines/engine[0]/fuel-flow-gph") );

  setprop("/engines/engine[0]/fuel-flow-pph/unit10000", chr(poundperhour[0]));
  setprop("/engines/engine[0]/fuel-flow-pph/unit1000", chr(poundperhour[1]));
  setprop("/engines/engine[0]/fuel-flow-pph/unit100", chr(poundperhour[2]));
  setprop("/engines/engine[0]/fuel-flow-pph/unit10", chr(poundperhour[3]));
  setprop("/engines/engine[0]/fuel-flow-pph/unit1", chr(poundperhour[4]));

  var FuelDensity=props.globals.getNode("consumables/fuel/tank[0]/density-ppg",1).getValue();
  if(FuelDensity == nil){FuelDensity = 6.72};
  var pph=getprop("/engines/engine[1]/fuel-flow-gph");
  if(pph == nil){pph = 0.0};
  setprop("/engines/engine[1]/fuel-flow-gph", pph * FuelDensity );

  var poundperhour = sprintf("%05.f", getprop("/engines/engine[1]/fuel-flow-gph") );

  setprop("/engines/engine[1]/fuel-flow-pph/unit10000", chr(poundperhour[0]));
  setprop("/engines/engine[1]/fuel-flow-pph/unit1000", chr(poundperhour[1]));
  setprop("/engines/engine[1]/fuel-flow-pph/unit100", chr(poundperhour[2]));
  setprop("/engines/engine[1]/fuel-flow-pph/unit10", chr(poundperhour[3]));
  setprop("/engines/engine[1]/fuel-flow-pph/unit1", chr(poundperhour[4]));

  settimer(loop, 0);
}

loop();

