module UnrealScript.TribesGame.TrDevice_ImpactBomblets;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ImpactBomblets : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ImpactBomblets")()); }
	private static __gshared TrDevice_ImpactBomblets mDefaultProperties;
	@property final static TrDevice_ImpactBomblets DefaultProperties() { mixin(MGDPC!(TrDevice_ImpactBomblets, "TrDevice_ImpactBomblets TribesGame.Default__TrDevice_ImpactBomblets")()); }
}
