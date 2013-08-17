module UnrealScript.TribesGame.TrProj_ARC8;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ARC8 : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ARC8")()); }
	private static __gshared TrProj_ARC8 mDefaultProperties;
	@property final static TrProj_ARC8 DefaultProperties() { mixin(MGDPC!(TrProj_ARC8, "TrProj_ARC8 TribesGame.Default__TrProj_ARC8")()); }
}
