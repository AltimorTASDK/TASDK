module UnrealScript.TribesGame.TrDevice_ERechargePack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_ERechargePack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ERechargePack")); }
	private static __gshared TrDevice_ERechargePack mDefaultProperties;
	@property final static TrDevice_ERechargePack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ERechargePack)("TrDevice_ERechargePack TribesGame.Default__TrDevice_ERechargePack")); }
}
