module UnrealScript.TribesGame.TrDevice_ConstantFire;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ConstantFire : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ConstantFire")); }
	private static __gshared TrDevice_ConstantFire mDefaultProperties;
	@property final static TrDevice_ConstantFire DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ConstantFire)("TrDevice_ConstantFire TribesGame.Default__TrDevice_ConstantFire")); }
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
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.ReplicatedEvent")); }
			ScriptFunction OnEndConstantFire() { return mOnEndConstantFire ? mOnEndConstantFire : (mOnEndConstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.OnEndConstantFire")); }
			ScriptFunction OnStartConstantFire() { return mOnStartConstantFire ? mOnStartConstantFire : (mOnStartConstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.OnStartConstantFire")); }
			ScriptFunction OnTickConstantFire() { return mOnTickConstantFire ? mOnTickConstantFire : (mOnTickConstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.OnTickConstantFire")); }
			ScriptFunction EndFire() { return mEndFire ? mEndFire : (mEndFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.EndFire")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.StartFire")); }
			ScriptFunction PlayFireAnimation() { return mPlayFireAnimation ? mPlayFireAnimation : (mPlayFireAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ConstantFire.PlayFireAnimation")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2164); }
			SoundCue m_FireTail() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2160); }
			float WeaponFireFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
		}
		bool m_bIsCurrentlyFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x4) != 0; }
		bool m_bIsCurrentlyFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x4; } return val; }
		bool m_bHasLoopingFireAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x2) != 0; }
		bool m_bHasLoopingFireAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x2; } return val; }
		bool m_bSoundLinkedWithState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x1) != 0; }
		bool m_bSoundLinkedWithState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x1; } return val; }
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
