module UnrealScript.TribesGame.TrProj_WhiteOut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_WhiteOut : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_WhiteOut")); }
	private static __gshared TrProj_WhiteOut mDefaultProperties;
	@property final static TrProj_WhiteOut DefaultProperties() { mixin(MGDPC("TrProj_WhiteOut", "TrProj_WhiteOut TribesGame.Default__TrProj_WhiteOut")); }
}
