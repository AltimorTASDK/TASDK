module UnrealScript.UTGame.UTMultiKillMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTMultiKillMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMultiKillMessage")); }
	private static __gshared UTMultiKillMessage mDefaultProperties;
	@property final static UTMultiKillMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTMultiKillMessage)("UTMultiKillMessage UTGame.Default__UTMultiKillMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mGetFontSize;
			ScriptFunction mShouldBeRemoved;
			ScriptFunction mAddAnnouncement;
		}
		public @property static final
		{
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.ClientReceive")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.AnnouncementSound")); }
			ScriptFunction GetFontSize() { return mGetFontSize ? mGetFontSize : (mGetFontSize = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.GetFontSize")); }
			ScriptFunction ShouldBeRemoved() { return mShouldBeRemoved ? mShouldBeRemoved : (mShouldBeRemoved = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.ShouldBeRemoved")); }
			ScriptFunction AddAnnouncement() { return mAddAnnouncement ? mAddAnnouncement : (mAddAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMultiKillMessage.AddAnnouncement")); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave KillSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 160); }
		ScriptString KillString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
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
	static bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		StaticClass.ProcessEvent(Functions.ShouldBeRemoved, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	static bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.AddAnnouncement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
