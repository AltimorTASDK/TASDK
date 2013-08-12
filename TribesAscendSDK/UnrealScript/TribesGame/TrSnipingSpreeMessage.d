module UnrealScript.TribesGame.TrSnipingSpreeMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface TrSnipingSpreeMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSnipingSpreeMessage")); }
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
			ScriptFunction GetFontSize() { return mGetFontSize ? mGetFontSize : (mGetFontSize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSnipingSpreeMessage.GetFontSize")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSnipingSpreeMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSnipingSpreeMessage.ClientReceive")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSnipingSpreeMessage.AnnouncementSound")); }
		}
	}
	@property final auto ref
	{
		ScriptString EndSpreeNoteTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 276); }
		SoundNodeWave SpreeSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 256); }
		ScriptString SelfSpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		ScriptString SpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString MultiKillString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString EndSelfSpree() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString EndSpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
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
