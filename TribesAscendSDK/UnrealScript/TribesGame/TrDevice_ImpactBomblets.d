module UnrealScript.TribesGame.TrDevice_ImpactBomblets;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ImpactBomblets : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ImpactBomblets")); }
	private static __gshared TrDevice_ImpactBomblets mDefaultProperties;
	@property final static TrDevice_ImpactBomblets DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ImpactBomblets)("TrDevice_ImpactBomblets TribesGame.Default__TrDevice_ImpactBomblets")); }
}
