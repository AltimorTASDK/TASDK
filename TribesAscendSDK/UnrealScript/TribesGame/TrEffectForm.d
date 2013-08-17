module UnrealScript.TribesGame.TrEffectForm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Material;

extern(C++) interface TrEffectForm : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEffectForm")()); }
	private static __gshared TrEffectForm mDefaultProperties;
	@property final static TrEffectForm DefaultProperties() { mixin(MGDPC!(TrEffectForm, "TrEffectForm TribesGame.Default__TrEffectForm")()); }
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
			ScriptFunction GetOverwriteMat() { mixin(MGF!("mGetOverwriteMat", "Function TribesGame.TrEffectForm.GetOverwriteMat")()); }
			ScriptFunction GetMatApplyToPawn() { mixin(MGF!("mGetMatApplyToPawn", "Function TribesGame.TrEffectForm.GetMatApplyToPawn")()); }
			ScriptFunction GetMatApplyToWeapon() { mixin(MGF!("mGetMatApplyToWeapon", "Function TribesGame.TrEffectForm.GetMatApplyToWeapon")()); }
			ScriptFunction GetMatApplyToAttachment() { mixin(MGF!("mGetMatApplyToAttachment", "Function TribesGame.TrEffectForm.GetMatApplyToAttachment")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Material m_BodyMat() { mixin(MGPC!("Material", 60)()); }
			TrObject.EffectFormPriority m_ePriority() { mixin(MGPC!("TrObject.EffectFormPriority", 72)()); }
			SoundCue m_SoundCue() { mixin(MGPC!("SoundCue", 84)()); }
			ParticleSystem m_PSC() { mixin(MGPC!("ParticleSystem", 80)()); }
			TrObject.EffectFormMatTypes m_eMatType() { mixin(MGPC!("TrObject.EffectFormMatTypes", 73)()); }
			float m_fBodyMatFadeOutTime() { mixin(MGPC!("float", 68)()); }
			float m_fBodyMatFadeInTime() { mixin(MGPC!("float", 64)()); }
		}
		bool m_bIsManaged() { mixin(MGBPC!(76, 0x2)()); }
		bool m_bIsManaged(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool m_bApplied() { mixin(MGBPC!(76, 0x1)()); }
		bool m_bApplied(bool val) { mixin(MSBPC!(76, 0x1)()); }
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
