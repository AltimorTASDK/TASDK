module UnrealScript.TribesGame.GFxTrMenuSounds;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrMenuSounds : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrMenuSounds")); }
	private static __gshared GFxTrMenuSounds mDefaultProperties;
	@property final static GFxTrMenuSounds DefaultProperties() { mixin(MGDPC("GFxTrMenuSounds", "GFxTrMenuSounds TribesGame.Default__GFxTrMenuSounds")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSoundToolTip;
			ScriptFunction mSoundXPGain;
			ScriptFunction mSoundSkillType;
			ScriptFunction mSoundClassType;
			ScriptFunction mSoundPurchaseSkill;
			ScriptFunction mSoundSelectedQueue;
			ScriptFunction mLeaveQueue;
			ScriptFunction mPageForward;
			ScriptFunction mPageBack;
			ScriptFunction mClassRollover;
			ScriptFunction mClassSelected;
			ScriptFunction mClassLocked;
			ScriptFunction mPlayMenuSound;
		}
		public @property static final
		{
			ScriptFunction SoundToolTip() { mixin(MGF("mSoundToolTip", "Function TribesGame.GFxTrMenuSounds.SoundToolTip")); }
			ScriptFunction SoundXPGain() { mixin(MGF("mSoundXPGain", "Function TribesGame.GFxTrMenuSounds.SoundXPGain")); }
			ScriptFunction SoundSkillType() { mixin(MGF("mSoundSkillType", "Function TribesGame.GFxTrMenuSounds.SoundSkillType")); }
			ScriptFunction SoundClassType() { mixin(MGF("mSoundClassType", "Function TribesGame.GFxTrMenuSounds.SoundClassType")); }
			ScriptFunction SoundPurchaseSkill() { mixin(MGF("mSoundPurchaseSkill", "Function TribesGame.GFxTrMenuSounds.SoundPurchaseSkill")); }
			ScriptFunction SoundSelectedQueue() { mixin(MGF("mSoundSelectedQueue", "Function TribesGame.GFxTrMenuSounds.SoundSelectedQueue")); }
			ScriptFunction LeaveQueue() { mixin(MGF("mLeaveQueue", "Function TribesGame.GFxTrMenuSounds.LeaveQueue")); }
			ScriptFunction PageForward() { mixin(MGF("mPageForward", "Function TribesGame.GFxTrMenuSounds.PageForward")); }
			ScriptFunction PageBack() { mixin(MGF("mPageBack", "Function TribesGame.GFxTrMenuSounds.PageBack")); }
			ScriptFunction ClassRollover() { mixin(MGF("mClassRollover", "Function TribesGame.GFxTrMenuSounds.ClassRollover")); }
			ScriptFunction ClassSelected() { mixin(MGF("mClassSelected", "Function TribesGame.GFxTrMenuSounds.ClassSelected")); }
			ScriptFunction ClassLocked() { mixin(MGF("mClassLocked", "Function TribesGame.GFxTrMenuSounds.ClassLocked")); }
			ScriptFunction PlayMenuSound() { mixin(MGF("mPlayMenuSound", "Function TribesGame.GFxTrMenuSounds.PlayMenuSound")); }
		}
	}
	enum EMenuSound : ubyte
	{
		EMS_CLASS_ROLLOVER = 0,
		EMS_CLASS_SELECTED = 1,
		EMS_CLASS_UNLOCKED = 2,
		EMS_CLASS_DENIED = 3,
		EMS_SKILL_ROLLOVER = 4,
		EMS_SKILL_SELECTED = 5,
		EMS_SKILL_UNLOCKED = 6,
		EMS_QUEUE_SELECTED = 7,
		EMS_QUEUE_EXIT = 8,
		EMS_TOOLTIP_OPEN = 9,
		EMS_TOOLTIP_CLOSE = 10,
		EMS_XP_GAIN = 11,
		EMS_XP_POINT_POSITIVE = 12,
		EMS_XP_POINT_NEGATIVE = 13,
		EMS_PAGE_FORWARD = 14,
		EMS_PAGE_BACK = 15,
		EMS_MAX = 16,
	}
final:
	void SoundToolTip(bool bOpened)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOpened;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundToolTip, params.ptr, cast(void*)0);
	}
	void SoundXPGain(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundXPGain, params.ptr, cast(void*)0);
	}
	void SoundSkillType(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundSkillType, params.ptr, cast(void*)0);
	}
	void SoundClassType(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundClassType, params.ptr, cast(void*)0);
	}
	void SoundPurchaseSkill()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundPurchaseSkill, cast(void*)0, cast(void*)0);
	}
	void SoundSelectedQueue()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundSelectedQueue, cast(void*)0, cast(void*)0);
	}
	void LeaveQueue()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveQueue, cast(void*)0, cast(void*)0);
	}
	void PageForward()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PageForward, cast(void*)0, cast(void*)0);
	}
	void PageBack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PageBack, cast(void*)0, cast(void*)0);
	}
	void ClassRollover()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassRollover, cast(void*)0, cast(void*)0);
	}
	void ClassSelected()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassSelected, cast(void*)0, cast(void*)0);
	}
	void ClassLocked()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassLocked, cast(void*)0, cast(void*)0);
	}
	void PlayMenuSound(GFxTrMenuSounds.EMenuSound MenuSound)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxTrMenuSounds.EMenuSound*)params.ptr = MenuSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayMenuSound, params.ptr, cast(void*)0);
	}
}
