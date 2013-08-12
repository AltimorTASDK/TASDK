module UnrealScript.TribesGame.TrPromptMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPromptMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPromptMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mFormatText;
		}
		public @property static final
		{
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPromptMessage.GetString")); }
			ScriptFunction FormatText() { return mFormatText ? mFormatText : (mFormatText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPromptMessage.FormatText")); }
		}
	}
	@property final auto ref
	{
		ScriptString YourJackalGrenadesHaveBeenDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString EnterVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString ObjectiveUpgradeDeniedMaxLevel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		ScriptString ObjectiveUpgradeDeniedNoCredits() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
		ScriptString KickWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
		ScriptString UpgradeObjective() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
		ScriptString EquipRepairGun() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
		SoundCue UpgradeDeniedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static ScriptString FormatText(ScriptString InString, TrPlayerController TrPC)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		*cast(TrPlayerController*)&params[12] = TrPC;
		StaticClass.ProcessEvent(Functions.FormatText, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
}
