module UnrealScript.TribesGame.TrDevice_ShieldPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_ShieldPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ShieldPack")); }
	private static __gshared TrDevice_ShieldPack mDefaultProperties;
	@property final static TrDevice_ShieldPack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ShieldPack)("TrDevice_ShieldPack TribesGame.Default__TrDevice_ShieldPack")); }
}
