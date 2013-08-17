module UnrealScript.TribesGame.TrProj_LightTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_LightTurret")); }
	private static __gshared TrProj_LightTurret mDefaultProperties;
	@property final static TrProj_LightTurret DefaultProperties() { mixin(MGDPC("TrProj_LightTurret", "TrProj_LightTurret TribesGame.Default__TrProj_LightTurret")); }
}
