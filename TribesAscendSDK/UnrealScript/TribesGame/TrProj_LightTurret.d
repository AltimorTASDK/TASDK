module UnrealScript.TribesGame.TrProj_LightTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_LightTurret")); }
	private static __gshared TrProj_LightTurret mDefaultProperties;
	@property final static TrProj_LightTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_LightTurret)("TrProj_LightTurret TribesGame.Default__TrProj_LightTurret")); }
}
