module UnrealScript.TribesGame.TrFlagTeamRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagTeamRabbit : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFlagTeamRabbit")); }
	private static __gshared TrFlagTeamRabbit mDefaultProperties;
	@property final static TrFlagTeamRabbit DefaultProperties() { mixin(MGDPC("TrFlagTeamRabbit", "TrFlagTeamRabbit TribesGame.Default__TrFlagTeamRabbit")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetHolder;
			ScriptFunction mClearHolder;
			ScriptFunction mSendHome;
			ScriptFunction mBroadcastReturnedMessage;
			ScriptFunction mClientReturnedHome;
		}
		public @property static final
		{
			ScriptFunction SetHolder() { mixin(MGF("mSetHolder", "Function TribesGame.TrFlagTeamRabbit.SetHolder")); }
			ScriptFunction ClearHolder() { mixin(MGF("mClearHolder", "Function TribesGame.TrFlagTeamRabbit.ClearHolder")); }
			ScriptFunction SendHome() { mixin(MGF("mSendHome", "Function TribesGame.TrFlagTeamRabbit.SendHome")); }
			ScriptFunction BroadcastReturnedMessage() { mixin(MGF("mBroadcastReturnedMessage", "Function TribesGame.TrFlagTeamRabbit.BroadcastReturnedMessage")); }
			ScriptFunction ClientReturnedHome() { mixin(MGF("mClientReturnedHome", "Function TribesGame.TrFlagTeamRabbit.ClientReturnedHome")); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrFlagTeamRabbit.Home")); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrFlagTeamRabbit.Dropped")); }
	}
	static struct Held
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrFlagTeamRabbit.Held")); }
	}
final:
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHolder, params.ptr, cast(void*)0);
	}
	void ClearHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearHolder, cast(void*)0, cast(void*)0);
	}
	void SendHome(Controller Returner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Returner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHome, params.ptr, cast(void*)0);
	}
	void BroadcastReturnedMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastReturnedMessage, cast(void*)0, cast(void*)0);
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReturnedHome, cast(void*)0, cast(void*)0);
	}
}
