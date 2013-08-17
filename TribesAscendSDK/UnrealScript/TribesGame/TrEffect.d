module UnrealScript.TribesGame.TrEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface TrEffect : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect")); }
	private static __gshared TrEffect mDefaultProperties;
	@property final static TrEffect DefaultProperties() { mixin(MGDPC("TrEffect", "TrEffect TribesGame.Default__TrEffect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
			ScriptFunction mCanBeApplied;
		}
		public @property static final
		{
			ScriptFunction Apply() { mixin(MGF("mApply", "Function TribesGame.TrEffect.Apply")); }
			ScriptFunction Remove() { mixin(MGF("mRemove", "Function TribesGame.TrEffect.Remove")); }
			ScriptFunction CanBeApplied() { mixin(MGF("mCanBeApplied", "Function TribesGame.TrEffect.CanBeApplied")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass m_EffectFormClass() { mixin(MGPC("ScriptClass", 76)); }
			float m_fValue() { mixin(MGPC("float", 72)); }
			TrObject.EffectCalcMethod m_eCalcMethodCode() { mixin(MGPC("TrObject.EffectCalcMethod", 64)); }
			int m_nEffectInstanceId() { mixin(MGPC("int", 60)); }
		}
		bool m_bRemovable() { mixin(MGBPC(68, 0x1)); }
		bool m_bRemovable(bool val) { mixin(MSBPC(68, 0x1)); }
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo* Impact = null)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		if (Impact !is null)
			*cast(Actor.ImpactInfo*)&params[4] = *Impact;
		(cast(ScriptObject)this).ProcessEvent(Functions.Apply, params.ptr, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Remove, params.ptr, cast(void*)0);
	}
	bool CanBeApplied(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeApplied, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
