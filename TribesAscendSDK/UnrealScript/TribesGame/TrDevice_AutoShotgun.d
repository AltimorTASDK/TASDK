module UnrealScript.TribesGame.TrDevice_AutoShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_AutoShotgun : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AutoShotgun")); }
	private static __gshared TrDevice_AutoShotgun mDefaultProperties;
	@property final static TrDevice_AutoShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_AutoShotgun)("TrDevice_AutoShotgun TribesGame.Default__TrDevice_AutoShotgun")); }
}
