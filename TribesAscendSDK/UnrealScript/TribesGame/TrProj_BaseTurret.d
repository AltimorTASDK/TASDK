module UnrealScript.TribesGame.TrProj_BaseTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BaseTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_BaseTurret")); }
	private static __gshared TrProj_BaseTurret mDefaultProperties;
	@property final static TrProj_BaseTurret DefaultProperties() { mixin(MGDPC("TrProj_BaseTurret", "TrProj_BaseTurret TribesGame.Default__TrProj_BaseTurret")); }
}
