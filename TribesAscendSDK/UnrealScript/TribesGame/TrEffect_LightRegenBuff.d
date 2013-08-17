module UnrealScript.TribesGame.TrEffect_LightRegenBuff;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEffect_RegenBuff;

extern(C++) interface TrEffect_LightRegenBuff : TrEffect_RegenBuff
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect_LightRegenBuff")); }
	private static __gshared TrEffect_LightRegenBuff mDefaultProperties;
	@property final static TrEffect_LightRegenBuff DefaultProperties() { mixin(MGDPC("TrEffect_LightRegenBuff", "TrEffect_LightRegenBuff TribesGame.Default__TrEffect_LightRegenBuff")); }
}
