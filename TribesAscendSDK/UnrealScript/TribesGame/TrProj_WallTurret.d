module UnrealScript.TribesGame.TrProj_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_WallTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_WallTurret")); }
	private static __gshared TrProj_WallTurret mDefaultProperties;
	@property final static TrProj_WallTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_WallTurret)("TrProj_WallTurret TribesGame.Default__TrProj_WallTurret")); }
}
