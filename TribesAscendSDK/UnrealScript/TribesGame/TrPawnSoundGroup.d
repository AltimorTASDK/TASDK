module UnrealScript.TribesGame.TrPawnSoundGroup;

import ScriptClasses;
import UnrealScript.UTGame.UTPawnSoundGroup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrPawnSoundGroup : UTPawnSoundGroup
{
	public @property final auto ref SoundCue m_RechargeHealthSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref SoundCue m_ShieldPackLoopSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref SoundCue m_ShieldPackLoopSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref SoundCue m_StealthPackLoopSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref SoundCue m_RageLoopSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref SoundCue m_RageLoopSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref SoundCue m_JammerPackLoopSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref SoundCue m_JetpackLoopSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref SoundCue m_LowHealthSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref SoundCue m_RechargeHealthSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptArray!(SoundCue) m_DyingSounds() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref SoundCue m_BlinkPackSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref SoundCue m_BlinkPackSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref SoundCue m_RageDeactivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref SoundCue m_RageDeactivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref SoundCue m_RageActivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref SoundCue m_RageActivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref SoundCue m_JammerPackLoopSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref SoundCue m_JammerPackDeactivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref SoundCue m_JammerPackDeactivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref SoundCue m_JammerPackActivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref SoundCue m_JammerPackActivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref SoundCue m_StealthPackLoopSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref SoundCue m_StealthPackDeactivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref SoundCue m_StealthPackDeactivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref SoundCue m_StealthPackActivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref SoundCue m_StealthPackActivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref SoundCue m_ShieldPackDeactivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref SoundCue m_ShieldPackDeactivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref SoundCue m_ShieldPackActivateSound3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref SoundCue m_ShieldPackActivateSound1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref SoundCue m_JetpackCooldownSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 172); }
	final void PlayShieldPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100645], params.ptr, cast(void*)0);
	}
	final void PlayShieldPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100647], params.ptr, cast(void*)0);
	}
	final void PlayStealthPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100649], params.ptr, cast(void*)0);
	}
	final void PlayStealthPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100651], params.ptr, cast(void*)0);
	}
	final void PlayJammerPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100653], params.ptr, cast(void*)0);
	}
	final void PlayJammerPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100655], params.ptr, cast(void*)0);
	}
	final void PlayRageActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100657], params.ptr, cast(void*)0);
	}
	final void PlayRageDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100659], params.ptr, cast(void*)0);
	}
	final void PlayDyingSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100661], params.ptr, cast(void*)0);
	}
	final void PlayBlinkPackSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100663], params.ptr, cast(void*)0);
	}
}
