module UnrealScript.UDKBase.UDKAnimBlendBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface UDKAnimBlendBase : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendBase")); }
	private static __gshared UDKAnimBlendBase mDefaultProperties;
	@property final static UDKAnimBlendBase DefaultProperties() { mixin(MGDPC("UDKAnimBlendBase", "UDKAnimBlendBase UDKBase.Default__UDKAnimBlendBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBlendTime;
			ScriptFunction mGetAnimDuration;
			ScriptFunction mTickAnim;
		}
		public @property static final
		{
			ScriptFunction GetBlendTime() { mixin(MGF("mGetBlendTime", "Function UDKBase.UDKAnimBlendBase.GetBlendTime")); }
			ScriptFunction GetAnimDuration() { mixin(MGF("mGetAnimDuration", "Function UDKBase.UDKAnimBlendBase.GetAnimDuration")); }
			ScriptFunction TickAnim() { mixin(MGF("mTickAnim", "Function UDKBase.UDKAnimBlendBase.TickAnim")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(float) ChildBlendTimes() { mixin(MGPC("ScriptArray!(float)", 280)); }
			float BlendTime() { mixin(MGPC("float", 276)); }
		}
		bool bTickAnimInScript() { mixin(MGBPC(292, 0x1)); }
		bool bTickAnimInScript(bool val) { mixin(MSBPC(292, 0x1)); }
	}
final:
	float GetBlendTime(int ChildIndex, bool* bGetDefault = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		if (bGetDefault !is null)
			*cast(bool*)&params[4] = *bGetDefault;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBlendTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	float GetAnimDuration(int ChildIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAnimDuration, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void TickAnim(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickAnim, params.ptr, cast(void*)0);
	}
}
