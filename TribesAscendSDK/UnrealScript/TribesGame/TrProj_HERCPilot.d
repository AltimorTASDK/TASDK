module UnrealScript.TribesGame.TrProj_HERCPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HERCPilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_HERCPilot")); }
	private static __gshared TrProj_HERCPilot mDefaultProperties;
	@property final static TrProj_HERCPilot DefaultProperties() { mixin(MGDPC("TrProj_HERCPilot", "TrProj_HERCPilot TribesGame.Default__TrProj_HERCPilot")); }
}
