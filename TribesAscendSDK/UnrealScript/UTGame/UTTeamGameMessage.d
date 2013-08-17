module UnrealScript.UTGame.UTTeamGameMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.HUD;

extern(C++) interface UTTeamGameMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTTeamGameMessage")); }
	private static __gshared UTTeamGameMessage mDefaultProperties;
	@property final static UTTeamGameMessage DefaultProperties() { mixin(MGDPC("UTTeamGameMessage", "UTTeamGameMessage UTGame.Default__UTTeamGameMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mGetFontSize;
			ScriptFunction mGetPos;
			ScriptFunction mGetColor;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { mixin(MGF("mClientReceive", "Function UTGame.UTTeamGameMessage.ClientReceive")); }
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function UTGame.UTTeamGameMessage.GetString")); }
			ScriptFunction AnnouncementSound() { mixin(MGF("mAnnouncementSound", "Function UTGame.UTTeamGameMessage.AnnouncementSound")); }
			ScriptFunction GetFontSize() { mixin(MGF("mGetFontSize", "Function UTGame.UTTeamGameMessage.GetFontSize")); }
			ScriptFunction GetPos() { mixin(MGF("mGetPos", "Function UTGame.UTTeamGameMessage.GetPos")); }
			ScriptFunction GetColor() { mixin(MGF("mGetColor", "Function UTGame.UTTeamGameMessage.GetColor")); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave AnnouncerSounds() { mixin(MGPC("SoundNodeWave", 156)); }
		UObject.Color BlueDrawColor() { mixin(MGPC("UObject.Color", 152)); }
		UObject.Color RedDrawColor() { mixin(MGPC("UObject.Color", 148)); }
		ScriptString YouAreOnBlueMessage() { mixin(MGPC("ScriptString", 136)); }
		ScriptString YouAreOnRedMessage() { mixin(MGPC("ScriptString", 124)); }
		ScriptString RequestTeamSwapPostfix() { mixin(MGPC("ScriptString", 112)); }
		ScriptString RequestTeamSwapPrefix() { mixin(MGPC("ScriptString", 100)); }
	}
final:
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		StaticClass.ProcessEvent(Functions.AnnouncementSound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	static int GetFontSize(int Switch, PlayerReplicationInfo RelatedPRI1, PlayerReplicationInfo RelatedPRI2, PlayerReplicationInfo pLocalPlayer)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI2;
		*cast(PlayerReplicationInfo*)&params[12] = pLocalPlayer;
		StaticClass.ProcessEvent(Functions.GetFontSize, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	static float GetPos(int Switch, HUD myHUD)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(HUD*)&params[4] = myHUD;
		StaticClass.ProcessEvent(Functions.GetPos, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static UObject.Color GetColor(int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[4] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
}
