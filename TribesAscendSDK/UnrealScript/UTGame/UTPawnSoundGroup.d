module UnrealScript.UTGame.UTPawnSoundGroup;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface UTPawnSoundGroup : UObject
{
public extern(D):
	struct FootstepSoundInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) FootstepSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 108); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) JumpingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 124); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) LandingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 136); }
		SoundCue InstagibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 164); }
		SoundCue BodyExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
		SoundCue CrushedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 156); }
		SoundCue BulletImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 152); }
		SoundCue DefaultLandingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 148); }
		SoundCue DefaultFootstepSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
		SoundCue GaspSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
		SoundCue DrownSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
		SoundCue GibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 96); }
		SoundCue HitSounds() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 84); }
		SoundCue DyingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 80); }
		SoundCue FallingDamageLandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 76); }
		SoundCue LandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 72); }
		SoundCue DefaultJumpingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 68); }
		SoundCue DoubleJumpSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
		SoundCue DodgeSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	SoundCue GetFootstepSound(int FootDown, ScriptName MaterialType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		*cast(ScriptName*)&params[4] = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41726], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[12];
	}
	SoundCue GetLandSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41741], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	SoundCue GetJumpSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41745], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	void PlayInstagibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48699], params.ptr, cast(void*)0);
	}
	void PlayBulletImpact(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48701], params.ptr, cast(void*)0);
	}
	void PlayCrushedSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48703], params.ptr, cast(void*)0);
	}
	void PlayBodyExplosion(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48705], params.ptr, cast(void*)0);
	}
	void PlayDodgeSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48707], params.ptr, cast(void*)0);
	}
	void PlayDoubleJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48709], params.ptr, cast(void*)0);
	}
	void PlayJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48711], params.ptr, cast(void*)0);
	}
	void PlayLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48713], params.ptr, cast(void*)0);
	}
	void PlayFallingDamageLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48715], params.ptr, cast(void*)0);
	}
	void PlayDyingSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48724], params.ptr, cast(void*)0);
	}
	void PlayTakeHitSound(Pawn P, int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48726], params.ptr, cast(void*)0);
	}
	void PlayGibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48729], params.ptr, cast(void*)0);
	}
	void PlayGaspSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48731], params.ptr, cast(void*)0);
	}
	void PlayDrownSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48733], params.ptr, cast(void*)0);
	}
}
