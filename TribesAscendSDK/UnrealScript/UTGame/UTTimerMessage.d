module UnrealScript.UTGame.UTTimerMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTTimerMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTimerMessage")()); }
	private static __gshared UTTimerMessage mDefaultProperties;
	@property final static UTTimerMessage DefaultProperties() { mixin(MGDPC!(UTTimerMessage, "UTTimerMessage UTGame.Default__UTTimerMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mGetFontSize;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTTimerMessage.ClientReceive")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTTimerMessage.GetString")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTTimerMessage.AnnouncementSound")()); }
			ScriptFunction GetFontSize() { mixin(MGF!("mGetFontSize", "Function UTGame.UTTimerMessage.GetFontSize")()); }
		}
	}
	@property final auto ref ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo) Announcements() { mixin(MGPC!(ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo), 100)()); }
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
}
