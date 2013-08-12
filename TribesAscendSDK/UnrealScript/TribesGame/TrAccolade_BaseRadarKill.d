module UnrealScript.TribesGame.TrAccolade_BaseRadarKill;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseRadarKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BaseRadarKill")); }
	private static __gshared TrAccolade_BaseRadarKill mDefaultProperties;
	@property final static TrAccolade_BaseRadarKill DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BaseRadarKill)("TrAccolade_BaseRadarKill TribesGame.Default__TrAccolade_BaseRadarKill")); }
}
