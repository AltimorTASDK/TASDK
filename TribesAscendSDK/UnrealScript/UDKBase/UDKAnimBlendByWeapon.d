module UnrealScript.UDKBase.UDKAnimBlendByWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendByWeapon : AnimNodeBlendPerBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByWeapon")()); }
	private static __gshared UDKAnimBlendByWeapon mDefaultProperties;
	@property final static UDKAnimBlendByWeapon DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByWeapon, "UDKAnimBlendByWeapon UDKBase.Default__UDKAnimBlendByWeapon")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnimFire;
			ScriptFunction mAnimStopFire;
		}
		public @property static final
		{
			ScriptFunction AnimFire() { mixin(MGF!("mAnimFire", "Function UDKBase.UDKAnimBlendByWeapon.AnimFire")()); }
			ScriptFunction AnimStopFire() { mixin(MGF!("mAnimStopFire", "Function UDKBase.UDKAnimBlendByWeapon.AnimStopFire")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float BlendTime() { mixin(MGPC!(float, 312)()); }
			ScriptName LoopingAnim() { mixin(MGPC!(ScriptName, 304)()); }
		}
		bool bLooping() { mixin(MGBPC!(300, 0x1)()); }
		bool bLooping(bool val) { mixin(MSBPC!(300, 0x1)()); }
	}
final:
	void AnimFire(ScriptName FireSequence, bool bAutoFire, float AnimRate, float SpecialBlendTime, ScriptName LoopSequence)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FireSequence;
		*cast(bool*)&params[8] = bAutoFire;
		*cast(float*)&params[12] = AnimRate;
		*cast(float*)&params[16] = SpecialBlendTime;
		*cast(ScriptName*)&params[20] = LoopSequence;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnimFire, params.ptr, cast(void*)0);
	}
	void AnimStopFire(float SpecialBlendTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = SpecialBlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnimStopFire, params.ptr, cast(void*)0);
	}
}
