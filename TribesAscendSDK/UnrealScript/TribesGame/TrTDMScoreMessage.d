module UnrealScript.TribesGame.TrTDMScoreMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrTDMScoreMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTDMScoreMessage")()); }
	private static __gshared TrTDMScoreMessage mDefaultProperties;
	@property final static TrTDMScoreMessage DefaultProperties() { mixin(MGDPC!(TrTDMScoreMessage, "TrTDMScoreMessage TribesGame.Default__TrTDMScoreMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function TribesGame.TrTDMScoreMessage.AnnouncementLevel")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrTDMScoreMessage.ClientReceive")()); }
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
