module UnrealScript.TribesGame.TrEffectForm;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Material;

extern(C++) interface TrEffectForm : UObject
{
	public @property final bool m_bIsManaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool m_bIsManaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final auto ref Material m_BodyMat() { return *cast(Material*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref TrObject.EffectFormPriority m_ePriority() { return *cast(TrObject.EffectFormPriority*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool m_bApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool m_bApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	public @property final auto ref SoundCue m_SoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ParticleSystem m_PSC() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref TrObject.EffectFormMatTypes m_eMatType() { return *cast(TrObject.EffectFormMatTypes*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref float m_fBodyMatFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float m_fBodyMatFadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	final Material GetOverwriteMat(ScriptArray!(TrObject.EffectFormOverwrite) List)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrObject.EffectFormOverwrite)*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87227], params.ptr, cast(void*)0);
		return *cast(Material*)&params[12];
	}
	final Material GetMatApplyToPawn(ScriptClass PawnClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = PawnClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87232], params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
	final Material GetMatApplyToWeapon(ScriptClass devClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = devClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87235], params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
	final Material GetMatApplyToAttachment(ScriptClass attClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = attClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87238], params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
}
