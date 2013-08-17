module UnrealScript.TribesGame.TrDevice_MaxPowerPoolPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_MaxPowerPoolPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_MaxPowerPoolPack")); }
	private static __gshared TrDevice_MaxPowerPoolPack mDefaultProperties;
	@property final static TrDevice_MaxPowerPoolPack DefaultProperties() { mixin(MGDPC("TrDevice_MaxPowerPoolPack", "TrDevice_MaxPowerPoolPack TribesGame.Default__TrDevice_MaxPowerPoolPack")); }
}
