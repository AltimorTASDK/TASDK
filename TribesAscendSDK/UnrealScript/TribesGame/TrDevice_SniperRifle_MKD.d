module UnrealScript.TribesGame.TrDevice_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_SniperRifle;

extern(C++) interface TrDevice_SniperRifle_MKD : TrDevice_SniperRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SniperRifle_MKD")); }
	private static __gshared TrDevice_SniperRifle_MKD mDefaultProperties;
	@property final static TrDevice_SniperRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_SniperRifle_MKD)("TrDevice_SniperRifle_MKD TribesGame.Default__TrDevice_SniperRifle_MKD")); }
}
