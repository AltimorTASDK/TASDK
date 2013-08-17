module UnrealScript.TribesGame.TrDmgType_TCNG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TCNG_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_TCNG_MKD")); }
	private static __gshared TrDmgType_TCNG_MKD mDefaultProperties;
	@property final static TrDmgType_TCNG_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_TCNG_MKD", "TrDmgType_TCNG_MKD TribesGame.Default__TrDmgType_TCNG_MKD")); }
}
