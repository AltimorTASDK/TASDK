module UnrealScript.TribesGame.TrProj_SpikeLauncherSecondary;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_SpikeLauncherSecondary : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SpikeLauncherSecondary")); }
	private static __gshared TrProj_SpikeLauncherSecondary mDefaultProperties;
	@property final static TrProj_SpikeLauncherSecondary DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_SpikeLauncherSecondary)("TrProj_SpikeLauncherSecondary TribesGame.Default__TrProj_SpikeLauncherSecondary")); }
}
