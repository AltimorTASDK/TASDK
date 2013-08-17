module UnrealScript.TribesGame.TrProj_BeowulfPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BeowulfPilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_BeowulfPilot")); }
	private static __gshared TrProj_BeowulfPilot mDefaultProperties;
	@property final static TrProj_BeowulfPilot DefaultProperties() { mixin(MGDPC("TrProj_BeowulfPilot", "TrProj_BeowulfPilot TribesGame.Default__TrProj_BeowulfPilot")); }
}
