module UnrealScript.TribesGame.TrProj_MIRVLauncherSecondary;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_MIRVLauncherSecondary : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MIRVLauncherSecondary")); }
	private static __gshared TrProj_MIRVLauncherSecondary mDefaultProperties;
	@property final static TrProj_MIRVLauncherSecondary DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_MIRVLauncherSecondary)("TrProj_MIRVLauncherSecondary TribesGame.Default__TrProj_MIRVLauncherSecondary")); }
}
