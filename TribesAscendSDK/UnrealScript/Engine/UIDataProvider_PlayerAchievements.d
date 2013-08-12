module UnrealScript.Engine.UIDataProvider_PlayerAchievements;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_PlayerAchievements : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_PlayerAchievements")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTotalGamerScore;
			ScriptFunction mGetMaxTotalGamerScore;
			ScriptFunction mPopulateAchievementIcons;
			ScriptFunction mGetAchievementIconPathName;
			ScriptFunction mGetAchievementDetails;
			ScriptFunction mOnPlayerAchievementsChanged;
			ScriptFunction mOnPlayerAchievementUnlocked;
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mOnLoginChange;
			ScriptFunction mUpdateAchievements;
		}
		public @property static final
		{
			ScriptFunction GetTotalGamerScore() { return mGetTotalGamerScore ? mGetTotalGamerScore : (mGetTotalGamerScore = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.GetTotalGamerScore")); }
			ScriptFunction GetMaxTotalGamerScore() { return mGetMaxTotalGamerScore ? mGetMaxTotalGamerScore : (mGetMaxTotalGamerScore = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.GetMaxTotalGamerScore")); }
			ScriptFunction PopulateAchievementIcons() { return mPopulateAchievementIcons ? mPopulateAchievementIcons : (mPopulateAchievementIcons = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.PopulateAchievementIcons")); }
			ScriptFunction GetAchievementIconPathName() { return mGetAchievementIconPathName ? mGetAchievementIconPathName : (mGetAchievementIconPathName = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.GetAchievementIconPathName")); }
			ScriptFunction GetAchievementDetails() { return mGetAchievementDetails ? mGetAchievementDetails : (mGetAchievementDetails = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.GetAchievementDetails")); }
			ScriptFunction OnPlayerAchievementsChanged() { return mOnPlayerAchievementsChanged ? mOnPlayerAchievementsChanged : (mOnPlayerAchievementsChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.OnPlayerAchievementsChanged")); }
			ScriptFunction OnPlayerAchievementUnlocked() { return mOnPlayerAchievementUnlocked ? mOnPlayerAchievementUnlocked : (mOnPlayerAchievementUnlocked = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.OnPlayerAchievementUnlocked")); }
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.OnUnregister")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.OnLoginChange")); }
			ScriptFunction UpdateAchievements() { return mUpdateAchievements ? mUpdateAchievements : (mUpdateAchievements = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_PlayerAchievements.UpdateAchievements")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.AchievementDetails) Achievements() { return *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)(cast(size_t)cast(void*)this + 96); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	int GetTotalGamerScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTotalGamerScore, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetMaxTotalGamerScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxTotalGamerScore, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void PopulateAchievementIcons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateAchievementIcons, cast(void*)0, cast(void*)0);
	}
	ScriptString GetAchievementIconPathName(int AchievementId, bool bReturnLockedIcon)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(bool*)&params[4] = bReturnLockedIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievementIconPathName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	void GetAchievementDetails(int AchievementId, OnlineSubsystem.AchievementDetails* OutAchievementDetails)
	{
		ubyte params[56];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(OnlineSubsystem.AchievementDetails*)&params[4] = *OutAchievementDetails;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievementDetails, params.ptr, cast(void*)0);
		*OutAchievementDetails = *cast(OnlineSubsystem.AchievementDetails*)&params[4];
	}
	void OnPlayerAchievementsChanged(int TitleId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TitleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayerAchievementsChanged, params.ptr, cast(void*)0);
	}
	void OnPlayerAchievementUnlocked(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayerAchievementUnlocked, params.ptr, cast(void*)0);
	}
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void UpdateAchievements()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAchievements, cast(void*)0, cast(void*)0);
	}
}
