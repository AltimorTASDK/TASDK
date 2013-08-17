module UnrealScript.Engine.UIDataProvider_PlayerAchievements;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_PlayerAchievements : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider_PlayerAchievements")()); }
	private static __gshared UIDataProvider_PlayerAchievements mDefaultProperties;
	@property final static UIDataProvider_PlayerAchievements DefaultProperties() { mixin(MGDPC!(UIDataProvider_PlayerAchievements, "UIDataProvider_PlayerAchievements Engine.Default__UIDataProvider_PlayerAchievements")()); }
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
			ScriptFunction GetTotalGamerScore() { mixin(MGF!("mGetTotalGamerScore", "Function Engine.UIDataProvider_PlayerAchievements.GetTotalGamerScore")()); }
			ScriptFunction GetMaxTotalGamerScore() { mixin(MGF!("mGetMaxTotalGamerScore", "Function Engine.UIDataProvider_PlayerAchievements.GetMaxTotalGamerScore")()); }
			ScriptFunction PopulateAchievementIcons() { mixin(MGF!("mPopulateAchievementIcons", "Function Engine.UIDataProvider_PlayerAchievements.PopulateAchievementIcons")()); }
			ScriptFunction GetAchievementIconPathName() { mixin(MGF!("mGetAchievementIconPathName", "Function Engine.UIDataProvider_PlayerAchievements.GetAchievementIconPathName")()); }
			ScriptFunction GetAchievementDetails() { mixin(MGF!("mGetAchievementDetails", "Function Engine.UIDataProvider_PlayerAchievements.GetAchievementDetails")()); }
			ScriptFunction OnPlayerAchievementsChanged() { mixin(MGF!("mOnPlayerAchievementsChanged", "Function Engine.UIDataProvider_PlayerAchievements.OnPlayerAchievementsChanged")()); }
			ScriptFunction OnPlayerAchievementUnlocked() { mixin(MGF!("mOnPlayerAchievementUnlocked", "Function Engine.UIDataProvider_PlayerAchievements.OnPlayerAchievementUnlocked")()); }
			ScriptFunction OnRegister() { mixin(MGF!("mOnRegister", "Function Engine.UIDataProvider_PlayerAchievements.OnRegister")()); }
			ScriptFunction OnUnregister() { mixin(MGF!("mOnUnregister", "Function Engine.UIDataProvider_PlayerAchievements.OnUnregister")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function Engine.UIDataProvider_PlayerAchievements.OnLoginChange")()); }
			ScriptFunction UpdateAchievements() { mixin(MGF!("mUpdateAchievements", "Function Engine.UIDataProvider_PlayerAchievements.UpdateAchievements")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.AchievementDetails) Achievements() { mixin(MGPC!("ScriptArray!(OnlineSubsystem.AchievementDetails)", 96)()); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC!("UObject.Pointer", 92)()); }
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
	ScriptString GetAchievementIconPathName(int AchievementId, bool* bReturnLockedIcon = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		if (bReturnLockedIcon !is null)
			*cast(bool*)&params[4] = *bReturnLockedIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievementIconPathName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	void GetAchievementDetails(in int AchievementId, ref OnlineSubsystem.AchievementDetails OutAchievementDetails)
	{
		ubyte params[56];
		params[] = 0;
		*cast(int*)params.ptr = cast(int)AchievementId;
		*cast(OnlineSubsystem.AchievementDetails*)&params[4] = OutAchievementDetails;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievementDetails, params.ptr, cast(void*)0);
		OutAchievementDetails = *cast(OnlineSubsystem.AchievementDetails*)&params[4];
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
