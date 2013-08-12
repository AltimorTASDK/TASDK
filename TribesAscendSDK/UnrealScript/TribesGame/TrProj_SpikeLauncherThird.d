module UnrealScript.TribesGame.TrProj_SpikeLauncherThird;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_SpikeLauncherThird : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SpikeLauncherThird")); }
	private static __gshared TrProj_SpikeLauncherThird mDefaultProperties;
	@property final static TrProj_SpikeLauncherThird DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_SpikeLauncherThird)("TrProj_SpikeLauncherThird TribesGame.Default__TrProj_SpikeLauncherThird")); }
}
