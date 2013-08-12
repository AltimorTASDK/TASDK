module UnrealScript.TribesGame.TrProj_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GrenadeLauncher")); }
	private static __gshared TrProj_GrenadeLauncher mDefaultProperties;
	@property final static TrProj_GrenadeLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_GrenadeLauncher)("TrProj_GrenadeLauncher TribesGame.Default__TrProj_GrenadeLauncher")); }
}
