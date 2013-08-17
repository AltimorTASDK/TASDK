module UnrealScript.TribesGame.TrProj_TCNG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_TCNG : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_TCNG")); }
	private static __gshared TrProj_TCNG mDefaultProperties;
	@property final static TrProj_TCNG DefaultProperties() { mixin(MGDPC("TrProj_TCNG", "TrProj_TCNG TribesGame.Default__TrProj_TCNG")); }
}
