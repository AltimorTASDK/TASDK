module UnrealScript.TribesGame.TrProj_GravCyclePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_GravCyclePilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_GravCyclePilot")()); }
	private static __gshared TrProj_GravCyclePilot mDefaultProperties;
	@property final static TrProj_GravCyclePilot DefaultProperties() { mixin(MGDPC!(TrProj_GravCyclePilot, "TrProj_GravCyclePilot TribesGame.Default__TrProj_GravCyclePilot")()); }
}
