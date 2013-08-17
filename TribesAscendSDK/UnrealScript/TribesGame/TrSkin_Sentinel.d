module UnrealScript.TribesGame.TrSkin_Sentinel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Sentinel : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin_Sentinel")); }
	private static __gshared TrSkin_Sentinel mDefaultProperties;
	@property final static TrSkin_Sentinel DefaultProperties() { mixin(MGDPC("TrSkin_Sentinel", "TrSkin_Sentinel TribesGame.Default__TrSkin_Sentinel")); }
}
