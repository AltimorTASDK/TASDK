module UnrealScript.TribesGame.TrMiscellaneousMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrMiscellaneousMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMiscellaneousMessage")()); }
	private static __gshared TrMiscellaneousMessage mDefaultProperties;
	@property final static TrMiscellaneousMessage DefaultProperties() { mixin(MGDPC!(TrMiscellaneousMessage, "TrMiscellaneousMessage TribesGame.Default__TrMiscellaneousMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrMiscellaneousMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrMiscellaneousMessage.ClientReceive")()); }
		}
	}
	@property final auto ref
	{
		ScriptString EnemyTeamBoughtHerc() { mixin(MGPC!(ScriptString, 144)()); }
		ScriptString OurTeamBoughtHerc() { mixin(MGPC!(ScriptString, 132)()); }
		SoundCue DiamondSwordCloseToLoss() { mixin(MGPC!(SoundCue, 128)()); }
		SoundCue DiamondSwordCloseToWin() { mixin(MGPC!(SoundCue, 124)()); }
		SoundCue BloodEagleCloseToLoss() { mixin(MGPC!(SoundCue, 120)()); }
		SoundCue BloodEagleCloseToWin() { mixin(MGPC!(SoundCue, 116)()); }
		SoundCue FriendDiamondSwordBoughtHerc() { mixin(MGPC!(SoundCue, 112)()); }
		SoundCue FriendBloodEagleBoughtHerc() { mixin(MGPC!(SoundCue, 108)()); }
		SoundCue EnemyDiamondSwordBoughtHerc() { mixin(MGPC!(SoundCue, 104)()); }
		SoundCue EnemyBloodEagleBoughtHerc() { mixin(MGPC!(SoundCue, 100)()); }
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
}
