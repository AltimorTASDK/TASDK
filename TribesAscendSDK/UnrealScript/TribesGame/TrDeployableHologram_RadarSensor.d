module UnrealScript.TribesGame.TrDeployableHologram_RadarSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_RadarSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_RadarSensor")); }
}
