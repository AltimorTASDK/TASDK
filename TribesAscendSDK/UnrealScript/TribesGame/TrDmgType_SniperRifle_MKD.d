module UnrealScript.TribesGame.TrDmgType_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SniperRifle_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SniperRifle_MKD")); }
	private static __gshared TrDmgType_SniperRifle_MKD mDefaultProperties;
	@property final static TrDmgType_SniperRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SniperRifle_MKD)("TrDmgType_SniperRifle_MKD TribesGame.Default__TrDmgType_SniperRifle_MKD")); }
}
