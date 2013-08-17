module UnrealScript.TribesGame.TrDevice_LightRegenPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_LightRegenPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_LightRegenPack")); }
	private static __gshared TrDevice_LightRegenPack mDefaultProperties;
	@property final static TrDevice_LightRegenPack DefaultProperties() { mixin(MGDPC("TrDevice_LightRegenPack", "TrDevice_LightRegenPack TribesGame.Default__TrDevice_LightRegenPack")); }
}
