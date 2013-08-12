module UnrealScript.TribesGame.TrDeployableHologram_TripSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_TripSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_TripSensor")); }
}
