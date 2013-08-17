module UnrealScript.TribesGame.TrDevice_ConstantFire;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ConstantFire : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ConstantFire")()); }
	private static __gshared TrDevice_ConstantFire mDefaultProperties;
	@property final static TrDevice_ConstantFire DefaultProperties() { mixin(MGDPC!(TrDevice_ConstantFire, "TrDevice_ConstantFire TribesGame.Default__TrDevice_ConstantFire")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnEndConstantFire;
			ScriptFunction mOnStartConstantFire;
			ScriptFunction mOnTickConstantFire;
			ScriptFunction mEndFire;
			ScriptFunction mStartFire;
			ScriptFunction mPlayFireAnimation;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrDevice_ConstantFire.ReplicatedEvent")()); }
			ScriptFunction OnEndConstantFire() { mixin(MGF!("mOnEndConstantFire", "Function TribesGame.TrDevice_ConstantFire.OnEndConstantFire")()); }
			ScriptFunction OnStartConstantFire() { mixin(MGF!("mOnStartConstantFire", "Function TribesGame.TrDevice_ConstantFire.OnStartConstantFire")()); }
			ScriptFunction OnTickConstantFire() { mixin(MGF!("mOnTickConstantFire", "Function TribesGame.TrDevice_ConstantFire.OnTickConstantFire")()); }
			ScriptFunction EndFire() { mixin(MGF!("mEndFire", "Function TribesGame.TrDevice_ConstantFire.EndFire")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_ConstantFire.StartFire")()); }
			ScriptFunction PlayFireAnimation() { mixin(MGF!("mPlayFireAnimation", "Function TribesGame.TrDevice_ConstantFire.PlayFireAnimation")()); }
		}
	}
	static struct WeaponConstantFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_ConstantFire.WeaponConstantFiring")()); }
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentWeaponLoop'!
			ScriptName m_PostFireState() { mixin(MGPC!(ScriptName, 2164)()); }
			SoundCue m_FireTail() { mixin(MGPC!(SoundCue, 2160)()); }
			float WeaponFireFadeTime() { mixin(MGPC!(float, 2156)()); }
		}
		bool m_bIsCurrentlyFiring() { mixin(MGBPC!(2152, 0x4)()); }
		bool m_bIsCurrentlyFiring(bool val) { mixin(MSBPC!(2152, 0x4)()); }
		bool m_bHasLoopingFireAnim() { mixin(MGBPC!(2152, 0x2)()); }
		bool m_bHasLoopingFireAnim(bool val) { mixin(MSBPC!(2152, 0x2)()); }
		bool m_bSoundLinkedWithState() { mixin(MGBPC!(2152, 0x1)()); }
		bool m_bSoundLinkedWithState(bool val) { mixin(MSBPC!(2152, 0x1)()); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnEndConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndConstantFire, cast(void*)0, cast(void*)0);
	}
	void OnStartConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartConstantFire, cast(void*)0, cast(void*)0);
	}
	void OnTickConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTickConstantFire, cast(void*)0, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFire, params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireAnimation, params.ptr, cast(void*)0);
	}
}
