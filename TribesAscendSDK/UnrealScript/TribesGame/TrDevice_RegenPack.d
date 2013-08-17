module UnrealScript.TribesGame.TrDevice_RegenPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_RegenPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RegenPack")); }
	private static __gshared TrDevice_RegenPack mDefaultProperties;
	@property final static TrDevice_RegenPack DefaultProperties() { mixin(MGDPC("TrDevice_RegenPack", "TrDevice_RegenPack TribesGame.Default__TrDevice_RegenPack")); }
}
