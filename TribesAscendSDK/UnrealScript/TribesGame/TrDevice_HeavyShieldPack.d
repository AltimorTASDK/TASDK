module UnrealScript.TribesGame.TrDevice_HeavyShieldPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_HeavyShieldPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavyShieldPack")); }
	private static __gshared TrDevice_HeavyShieldPack mDefaultProperties;
	@property final static TrDevice_HeavyShieldPack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_HeavyShieldPack)("TrDevice_HeavyShieldPack TribesGame.Default__TrDevice_HeavyShieldPack")); }
}
