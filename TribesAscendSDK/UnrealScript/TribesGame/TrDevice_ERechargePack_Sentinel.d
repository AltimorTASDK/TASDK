module UnrealScript.TribesGame.TrDevice_ERechargePack_Sentinel;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ERechargePack;

extern(C++) interface TrDevice_ERechargePack_Sentinel : TrDevice_ERechargePack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ERechargePack_Sentinel")); }
	private static __gshared TrDevice_ERechargePack_Sentinel mDefaultProperties;
	@property final static TrDevice_ERechargePack_Sentinel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ERechargePack_Sentinel)("TrDevice_ERechargePack_Sentinel TribesGame.Default__TrDevice_ERechargePack_Sentinel")); }
}
