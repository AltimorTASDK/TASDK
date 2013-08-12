module UnrealScript.TribesGame.TrProj_BoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BoltLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_BoltLauncher")); }
	private static __gshared TrProj_BoltLauncher mDefaultProperties;
	@property final static TrProj_BoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_BoltLauncher)("TrProj_BoltLauncher TribesGame.Default__TrProj_BoltLauncher")); }
}
