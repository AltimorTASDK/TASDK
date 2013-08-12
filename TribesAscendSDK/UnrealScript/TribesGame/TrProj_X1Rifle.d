module UnrealScript.TribesGame.TrProj_X1Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_X1Rifle : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_X1Rifle")); }
	private static __gshared TrProj_X1Rifle mDefaultProperties;
	@property final static TrProj_X1Rifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_X1Rifle)("TrProj_X1Rifle TribesGame.Default__TrProj_X1Rifle")); }
}
