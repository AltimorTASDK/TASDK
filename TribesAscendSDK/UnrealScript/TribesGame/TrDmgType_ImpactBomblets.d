module UnrealScript.TribesGame.TrDmgType_ImpactBomblets;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ImpactBomblets : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ImpactBomblets")); }
	private static __gshared TrDmgType_ImpactBomblets mDefaultProperties;
	@property final static TrDmgType_ImpactBomblets DefaultProperties() { mixin(MGDPC("TrDmgType_ImpactBomblets", "TrDmgType_ImpactBomblets TribesGame.Default__TrDmgType_ImpactBomblets")); }
}
