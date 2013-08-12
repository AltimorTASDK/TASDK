module UnrealScript.TribesGame.TrEffect_LightRegenBuff;

import ScriptClasses;
import UnrealScript.TribesGame.TrEffect_RegenBuff;

extern(C++) interface TrEffect_LightRegenBuff : TrEffect_RegenBuff
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_LightRegenBuff")); }
	private static __gshared TrEffect_LightRegenBuff mDefaultProperties;
	@property final static TrEffect_LightRegenBuff DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffect_LightRegenBuff)("TrEffect_LightRegenBuff TribesGame.Default__TrEffect_LightRegenBuff")); }
}
