module UnrealScript.TribesGame.TrDevice_DamagePack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_DamagePack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_DamagePack")); }
	private static __gshared TrDevice_DamagePack mDefaultProperties;
	@property final static TrDevice_DamagePack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_DamagePack)("TrDevice_DamagePack TribesGame.Default__TrDevice_DamagePack")); }
}
