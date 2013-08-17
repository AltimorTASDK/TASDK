module UnrealScript.UTGame.UTScriptedVoiceMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTScriptedVoiceMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTScriptedVoiceMessage")()); }
	private static __gshared UTScriptedVoiceMessage mDefaultProperties;
	@property final static UTScriptedVoiceMessage DefaultProperties() { mixin(MGDPC!(UTScriptedVoiceMessage, "UTScriptedVoiceMessage UTGame.Default__UTScriptedVoiceMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementSound;
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
			ScriptFunction mAnnouncementLevel;
		}
		public @property static final
		{
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTScriptedVoiceMessage.AnnouncementSound")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTScriptedVoiceMessage.ClientReceive")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTScriptedVoiceMessage.GetString")()); }
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTScriptedVoiceMessage.AnnouncementLevel")()); }
		}
	}
final:
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
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
	}
}
