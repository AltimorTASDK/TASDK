module UnrealScript.TribesGame.TrMiscellaneousMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrMiscellaneousMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMiscellaneousMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMiscellaneousMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMiscellaneousMessage.ClientReceive")); }
		}
	}
	@property final auto ref
	{
		ScriptString EnemyTeamBoughtHerc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString OurTeamBoughtHerc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		SoundCue DiamondSwordCloseToLoss() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 128); }
		SoundCue DiamondSwordCloseToWin() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 124); }
		SoundCue BloodEagleCloseToLoss() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
		SoundCue BloodEagleCloseToWin() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 116); }
		SoundCue FriendDiamondSwordBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 112); }
		SoundCue FriendBloodEagleBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 108); }
		SoundCue EnemyDiamondSwordBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
		SoundCue EnemyBloodEagleBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
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
