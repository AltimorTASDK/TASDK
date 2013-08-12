module UnrealScript.TribesGame.TrEffectForm;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Material;

extern(C++) interface TrEffectForm : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffectForm")); }
	private static __gshared TrEffectForm mDefaultProperties;
	@property final static TrEffectForm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffectForm)("TrEffectForm TribesGame.Default__TrEffectForm")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetOverwriteMat;
			ScriptFunction mGetMatApplyToPawn;
			ScriptFunction mGetMatApplyToWeapon;
			ScriptFunction mGetMatApplyToAttachment;
		}
		public @property static final
		{
			ScriptFunction GetOverwriteMat() { return mGetOverwriteMat ? mGetOverwriteMat : (mGetOverwriteMat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffectForm.GetOverwriteMat")); }
			ScriptFunction GetMatApplyToPawn() { return mGetMatApplyToPawn ? mGetMatApplyToPawn : (mGetMatApplyToPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffectForm.GetMatApplyToPawn")); }
			ScriptFunction GetMatApplyToWeapon() { return mGetMatApplyToWeapon ? mGetMatApplyToWeapon : (mGetMatApplyToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffectForm.GetMatApplyToWeapon")); }
			ScriptFunction GetMatApplyToAttachment() { return mGetMatApplyToAttachment ? mGetMatApplyToAttachment : (mGetMatApplyToAttachment = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffectForm.GetMatApplyToAttachment")); }
		}
	}
	@property final
	{
		auto ref
		{
			Material m_BodyMat() { return *cast(Material*)(cast(size_t)cast(void*)this + 60); }
			TrObject.EffectFormPriority m_ePriority() { return *cast(TrObject.EffectFormPriority*)(cast(size_t)cast(void*)this + 72); }
			SoundCue m_SoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 84); }
			ParticleSystem m_PSC() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 80); }
			TrObject.EffectFormMatTypes m_eMatType() { return *cast(TrObject.EffectFormMatTypes*)(cast(size_t)cast(void*)this + 73); }
			float m_fBodyMatFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float m_fBodyMatFadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool m_bIsManaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool m_bIsManaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool m_bApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool m_bApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
final:
	Material GetOverwriteMat(ScriptArray!(TrObject.EffectFormOverwrite) List)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrObject.EffectFormOverwrite)*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOverwriteMat, params.ptr, cast(void*)0);
		return *cast(Material*)&params[12];
	}
	Material GetMatApplyToPawn(ScriptClass PawnClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = PawnClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMatApplyToPawn, params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
	Material GetMatApplyToWeapon(ScriptClass devClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = devClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMatApplyToWeapon, params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
	Material GetMatApplyToAttachment(ScriptClass attClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = attClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMatApplyToAttachment, params.ptr, cast(void*)0);
		return *cast(Material*)&params[4];
	}
}
