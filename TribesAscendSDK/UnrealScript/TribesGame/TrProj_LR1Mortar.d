module UnrealScript.TribesGame.TrProj_LR1Mortar;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_LR1Mortar : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_LR1Mortar")); }
	private static __gshared TrProj_LR1Mortar mDefaultProperties;
	@property final static TrProj_LR1Mortar DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_LR1Mortar)("TrProj_LR1Mortar TribesGame.Default__TrProj_LR1Mortar")); }
}
