module UnrealScript.TribesGame.TrDeployableHologram_OmniSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_OmniSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_OmniSensor")); }
}
