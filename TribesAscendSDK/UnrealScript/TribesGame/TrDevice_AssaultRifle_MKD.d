module UnrealScript.TribesGame.TrDevice_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_AssaultRifle_MKD : TrDevice_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AssaultRifle_MKD")); }
	private static __gshared TrDevice_AssaultRifle_MKD mDefaultProperties;
	@property final static TrDevice_AssaultRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_AssaultRifle_MKD)("TrDevice_AssaultRifle_MKD TribesGame.Default__TrDevice_AssaultRifle_MKD")); }
}
