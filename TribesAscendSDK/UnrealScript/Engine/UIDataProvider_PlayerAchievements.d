module UnrealScript.Engine.UIDataProvider_PlayerAchievements;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_PlayerAchievements : UIDataProvider_OnlinePlayerDataBase
{
	public @property final auto ref ScriptArray!(OnlineSubsystem.AchievementDetails) Achievements() { return *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	final int GetTotalGamerScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28358], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetMaxTotalGamerScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28360], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void PopulateAchievementIcons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28362], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetAchievementIconPathName(int AchievementId, bool bReturnLockedIcon)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(bool*)&params[4] = bReturnLockedIcon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28363], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final void GetAchievementDetails(int AchievementId, OnlineSubsystem.AchievementDetails* OutAchievementDetails)
	{
		ubyte params[56];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(OnlineSubsystem.AchievementDetails*)&params[4] = *OutAchievementDetails;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28367], params.ptr, cast(void*)0);
		*OutAchievementDetails = *cast(OnlineSubsystem.AchievementDetails*)&params[4];
	}
	final void OnPlayerAchievementsChanged(int TitleId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TitleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28371], params.ptr, cast(void*)0);
	}
	final void OnPlayerAchievementUnlocked(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28375], params.ptr, cast(void*)0);
	}
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28377], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28380], cast(void*)0, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28382], params.ptr, cast(void*)0);
	}
	final void UpdateAchievements()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28384], cast(void*)0, cast(void*)0);
	}
}
