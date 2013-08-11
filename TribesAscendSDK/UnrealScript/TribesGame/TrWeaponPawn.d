module UnrealScript.TribesGame.TrWeaponPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrWeaponPawn : UTWeaponPawn
{
	public @property final auto ref float m_fCurrentAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref ubyte r_nFlashReload() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref SoundCue r_scFiringLoop() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1576); }
	public @property final bool r_bFiringLoopSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1572) & 0x1) != 0; }
	public @property final bool r_bFiringLoopSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1572) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1572) &= ~0x1; } return val; }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115617], params.ptr, cast(void*)0);
	}
	final void PlayReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115619], cast(void*)0, cast(void*)0);
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115620], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	final void ClientPlayLoopSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115624], cast(void*)0, cast(void*)0);
	}
	final void PlayLoopingSound(SoundCue InSound, bool Play)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSound;
		*cast(bool*)&params[4] = Play;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115625], params.ptr, cast(void*)0);
	}
}
