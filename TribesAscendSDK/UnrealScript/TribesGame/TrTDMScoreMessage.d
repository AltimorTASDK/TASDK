module UnrealScript.TribesGame.TrTDMScoreMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrTDMScoreMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTDMScoreMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction AnnouncementLevel() { return mAnnouncementLevel ? mAnnouncementLevel : (mAnnouncementLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTDMScoreMessage.AnnouncementLevel")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTDMScoreMessage.ClientReceive")); }
		}
	}
final:
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
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
}
