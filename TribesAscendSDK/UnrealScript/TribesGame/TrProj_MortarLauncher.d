module UnrealScript.TribesGame.TrProj_MortarLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_MortarLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MortarLauncher")); }
	private static __gshared TrProj_MortarLauncher mDefaultProperties;
	@property final static TrProj_MortarLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_MortarLauncher)("TrProj_MortarLauncher TribesGame.Default__TrProj_MortarLauncher")); }
}
