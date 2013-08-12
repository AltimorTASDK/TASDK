module UnrealScript.TribesGame.TrProj_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyBoltLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavyBoltLauncher")); }
	private static __gshared TrProj_HeavyBoltLauncher mDefaultProperties;
	@property final static TrProj_HeavyBoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HeavyBoltLauncher)("TrProj_HeavyBoltLauncher TribesGame.Default__TrProj_HeavyBoltLauncher")); }
}
