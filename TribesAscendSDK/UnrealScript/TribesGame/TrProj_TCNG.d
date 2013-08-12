module UnrealScript.TribesGame.TrProj_TCNG;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_TCNG : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TCNG")); }
	private static __gshared TrProj_TCNG mDefaultProperties;
	@property final static TrProj_TCNG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_TCNG)("TrProj_TCNG TribesGame.Default__TrProj_TCNG")); }
}
