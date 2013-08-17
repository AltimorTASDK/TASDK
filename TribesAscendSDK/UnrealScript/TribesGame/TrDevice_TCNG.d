module UnrealScript.TribesGame.TrDevice_TCNG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_TCNG : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_TCNG")); }
	private static __gshared TrDevice_TCNG mDefaultProperties;
	@property final static TrDevice_TCNG DefaultProperties() { mixin(MGDPC("TrDevice_TCNG", "TrDevice_TCNG TribesGame.Default__TrDevice_TCNG")); }
}
