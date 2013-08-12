module UnrealScript.TribesGame.TrProj_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_AssaultRifle;

extern(C++) interface TrProj_AssaultRifle_MKD : TrProj_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_AssaultRifle_MKD")); }
	private static __gshared TrProj_AssaultRifle_MKD mDefaultProperties;
	@property final static TrProj_AssaultRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_AssaultRifle_MKD)("TrProj_AssaultRifle_MKD TribesGame.Default__TrProj_AssaultRifle_MKD")); }
}
