module UnrealScript.TribesGame.GFxTrMenuSounds;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrMenuSounds : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56597], params.ptr, cast(void*)0);
	}
	void SoundXPGain(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56599], params.ptr, cast(void*)0);
	}
	void SoundSkillType(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56601], params.ptr, cast(void*)0);
	}
	void SoundClassType(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56603], params.ptr, cast(void*)0);
	}
	void SoundPurchaseSkill()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56605], cast(void*)0, cast(void*)0);
	}
	void SoundSelectedQueue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56606], cast(void*)0, cast(void*)0);
	}
	void LeaveQueue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56607], cast(void*)0, cast(void*)0);
	}
	void PageForward()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56608], cast(void*)0, cast(void*)0);
	}
	void PageBack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56609], cast(void*)0, cast(void*)0);
	}
	void ClassRollover()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56610], cast(void*)0, cast(void*)0);
	}
	void ClassSelected()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56611], cast(void*)0, cast(void*)0);
	}
	void ClassLocked()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56612], cast(void*)0, cast(void*)0);
	}
	void PlayMenuSound(GFxTrMenuSounds.EMenuSound MenuSound)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxTrMenuSounds.EMenuSound*)params.ptr = MenuSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56613], params.ptr, cast(void*)0);
	}
}
