module UnrealScript.UTGame.UTTeamGameMessage;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamGameMessage")); }
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
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.ClientReceive")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.GetString")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.AnnouncementSound")); }
			ScriptFunction GetFontSize() { return mGetFontSize ? mGetFontSize : (mGetFontSize = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.GetFontSize")); }
			ScriptFunction GetPos() { return mGetPos ? mGetPos : (mGetPos = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.GetPos")); }
			ScriptFunction GetColor() { return mGetColor ? mGetColor : (mGetColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGameMessage.GetColor")); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave AnnouncerSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 156); }
		UObject.Color BlueDrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 152); }
		UObject.Color RedDrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 148); }
		ScriptString YouAreOnBlueMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString YouAreOnRedMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString RequestTeamSwapPostfix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString RequestTeamSwapPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
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
	static UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
}
