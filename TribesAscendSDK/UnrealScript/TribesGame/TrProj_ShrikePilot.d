module UnrealScript.TribesGame.TrProj_ShrikePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ShrikePilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ShrikePilot")); }
	private static __gshared TrProj_ShrikePilot mDefaultProperties;
	@property final static TrProj_ShrikePilot DefaultProperties() { mixin(MGDPC("TrProj_ShrikePilot", "TrProj_ShrikePilot TribesGame.Default__TrProj_ShrikePilot")); }
}
