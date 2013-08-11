module UnrealScript.UTGame.UTPawnSoundGroup;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface UTPawnSoundGroup : UObject
{
	struct FootstepSoundInfo
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __Sound[4];
		public @property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __MaterialType[8];
	}
	public @property final auto ref ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) FootstepSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) JumpingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) LandingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref SoundCue InstagibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref SoundCue BodyExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref SoundCue CrushedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref SoundCue BulletImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref SoundCue DefaultLandingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref SoundCue DefaultFootstepSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref SoundCue GaspSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref SoundCue DrownSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref SoundCue GibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref SoundCue HitSounds() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref SoundCue DyingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref SoundCue FallingDamageLandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref SoundCue LandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref SoundCue DefaultJumpingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref SoundCue DoubleJumpSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref SoundCue DodgeSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 60); }
	final SoundCue GetFootstepSound(int FootDown, ScriptName MaterialType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		*cast(ScriptName*)&params[4] = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41726], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[12];
	}
	final SoundCue GetLandSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41741], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	final SoundCue GetJumpSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41745], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	final void PlayInstagibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48699], params.ptr, cast(void*)0);
	}
	final void PlayBulletImpact(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48701], params.ptr, cast(void*)0);
	}
	final void PlayCrushedSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48703], params.ptr, cast(void*)0);
	}
	final void PlayBodyExplosion(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48705], params.ptr, cast(void*)0);
	}
	final void PlayDodgeSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48707], params.ptr, cast(void*)0);
	}
	final void PlayDoubleJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48709], params.ptr, cast(void*)0);
	}
	final void PlayJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48711], params.ptr, cast(void*)0);
	}
	final void PlayLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48713], params.ptr, cast(void*)0);
	}
	final void PlayFallingDamageLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48715], params.ptr, cast(void*)0);
	}
	final void PlayDyingSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48724], params.ptr, cast(void*)0);
	}
	final void PlayTakeHitSound(Pawn P, int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48726], params.ptr, cast(void*)0);
	}
	final void PlayGibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48729], params.ptr, cast(void*)0);
	}
	final void PlayGaspSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48731], params.ptr, cast(void*)0);
	}
	final void PlayDrownSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48733], params.ptr, cast(void*)0);
	}
}
