module UnrealScript.TribesGame.TrPromptMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPromptMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPromptMessage")()); }
	private static __gshared TrPromptMessage mDefaultProperties;
	@property final static TrPromptMessage DefaultProperties() { mixin(MGDPC!(TrPromptMessage, "TrPromptMessage TribesGame.Default__TrPromptMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mFormatText;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrPromptMessage.GetString")()); }
			ScriptFunction FormatText() { mixin(MGF!("mFormatText", "Function TribesGame.TrPromptMessage.FormatText")()); }
		}
	}
	@property final auto ref
	{
		ScriptString YourJackalGrenadesHaveBeenDestroyed() { mixin(MGPC!(ScriptString, 176)()); }
		ScriptString EnterVehicle() { mixin(MGPC!(ScriptString, 164)()); }
		ScriptString ObjectiveUpgradeDeniedMaxLevel() { mixin(MGPC!(ScriptString, 152)()); }
		ScriptString ObjectiveUpgradeDeniedNoCredits() { mixin(MGPC!(ScriptString, 140)()); }
		ScriptString KickWarning() { mixin(MGPC!(ScriptString, 128)()); }
		ScriptString UpgradeObjective() { mixin(MGPC!(ScriptString, 116)()); }
		ScriptString EquipRepairGun() { mixin(MGPC!(ScriptString, 104)()); }
		SoundCue UpgradeDeniedSound() { mixin(MGPC!(SoundCue, 100)()); }
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
