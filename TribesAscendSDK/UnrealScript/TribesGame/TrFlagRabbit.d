module UnrealScript.TribesGame.TrFlagRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagRabbit : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFlagRabbit")()); }
	private static __gshared TrFlagRabbit mDefaultProperties;
	@property final static TrFlagRabbit DefaultProperties() { mixin(MGDPC!(TrFlagRabbit, "TrFlagRabbit TribesGame.Default__TrFlagRabbit")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetHolder;
			ScriptFunction mClearHolder;
			ScriptFunction mSendHome;
			ScriptFunction mBroadcastReturnedMessage;
		}
		public @property static final
		{
			ScriptFunction SetHolder() { mixin(MGF!("mSetHolder", "Function TribesGame.TrFlagRabbit.SetHolder")()); }
			ScriptFunction ClearHolder() { mixin(MGF!("mClearHolder", "Function TribesGame.TrFlagRabbit.ClearHolder")()); }
			ScriptFunction SendHome() { mixin(MGF!("mSendHome", "Function TribesGame.TrFlagRabbit.SendHome")()); }
			ScriptFunction BroadcastReturnedMessage() { mixin(MGF!("mBroadcastReturnedMessage", "Function TribesGame.TrFlagRabbit.BroadcastReturnedMessage")()); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagRabbit.Home")()); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagRabbit.Dropped")()); }
	}
	static struct Held
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagRabbit.Held")()); }
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
}
