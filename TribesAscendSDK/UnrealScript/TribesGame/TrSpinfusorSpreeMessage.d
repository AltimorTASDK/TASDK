module UnrealScript.TribesGame.TrSpinfusorSpreeMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface TrSpinfusorSpreeMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSpinfusorSpreeMessage")()); }
	private static __gshared TrSpinfusorSpreeMessage mDefaultProperties;
	@property final static TrSpinfusorSpreeMessage DefaultProperties() { mixin(MGDPC!(TrSpinfusorSpreeMessage, "TrSpinfusorSpreeMessage TribesGame.Default__TrSpinfusorSpreeMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFontSize;
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementSound;
		}
		public @property static final
		{
			ScriptFunction GetFontSize() { mixin(MGF!("mGetFontSize", "Function TribesGame.TrSpinfusorSpreeMessage.GetFontSize")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrSpinfusorSpreeMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrSpinfusorSpreeMessage.ClientReceive")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function TribesGame.TrSpinfusorSpreeMessage.AnnouncementSound")()); }
		}
	}
	@property final auto ref
	{
		ScriptString EndSpreeNoteTrailer() { mixin(MGPC!("ScriptString", 276)()); }
		SoundNodeWave SpreeSound() { mixin(MGPC!("SoundNodeWave", 256)()); }
		ScriptString SelfSpreeNote() { mixin(MGPC!("ScriptString", 196)()); }
		ScriptString SpreeNote() { mixin(MGPC!("ScriptString", 136)()); }
		ScriptString MultiKillString() { mixin(MGPC!("ScriptString", 124)()); }
		ScriptString EndSelfSpree() { mixin(MGPC!("ScriptString", 112)()); }
		ScriptString EndSpreeNote() { mixin(MGPC!("ScriptString", 100)()); }
	}
final:
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
}
