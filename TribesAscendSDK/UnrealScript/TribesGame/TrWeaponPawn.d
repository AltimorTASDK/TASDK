module UnrealScript.TribesGame.TrWeaponPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrWeaponPawn : UTWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrWeaponPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPlayReload;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mClientPlayLoopSound;
			ScriptFunction mPlayLoopingSound;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrWeaponPawn.ReplicatedEvent")); }
			ScriptFunction PlayReload() { return mPlayReload ? mPlayReload : (mPlayReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrWeaponPawn.PlayReload")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrWeaponPawn.ProcessViewRotation")); }
			ScriptFunction ClientPlayLoopSound() { return mClientPlayLoopSound ? mClientPlayLoopSound : (mClientPlayLoopSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrWeaponPawn.ClientPlayLoopSound")); }
			ScriptFunction PlayLoopingSound() { return mPlayLoopingSound ? mPlayLoopingSound : (mPlayLoopingSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrWeaponPawn.PlayLoopingSound")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fCurrentAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			ubyte r_nFlashReload() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1564); }
			SoundCue r_scFiringLoop() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1576); }
		}
		bool r_bFiringLoopSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1572) & 0x1) != 0; }
		bool r_bFiringLoopSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1572) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1572) &= ~0x1; } return val; }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PlayReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, cast(void*)0, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	void ClientPlayLoopSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayLoopSound, cast(void*)0, cast(void*)0);
	}
	void PlayLoopingSound(SoundCue InSound, bool Play)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSound;
		*cast(bool*)&params[4] = Play;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLoopingSound, params.ptr, cast(void*)0);
	}
}
