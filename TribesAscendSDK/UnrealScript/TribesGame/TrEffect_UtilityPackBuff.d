module UnrealScript.TribesGame.TrEffect_UtilityPackBuff;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEffect_MaxPowerPoolBuff;

extern(C++) interface TrEffect_UtilityPackBuff : TrEffect_MaxPowerPoolBuff
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect_UtilityPackBuff")); }
	private static __gshared TrEffect_UtilityPackBuff mDefaultProperties;
	@property final static TrEffect_UtilityPackBuff DefaultProperties() { mixin(MGDPC("TrEffect_UtilityPackBuff", "TrEffect_UtilityPackBuff TribesGame.Default__TrEffect_UtilityPackBuff")); }
}
