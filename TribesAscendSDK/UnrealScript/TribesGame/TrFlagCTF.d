module UnrealScript.TribesGame.TrFlagCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagCTF : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFlagCTF")()); }
	private static __gshared TrFlagCTF mDefaultProperties;
	@property final static TrFlagCTF DefaultProperties() { mixin(MGDPC!(TrFlagCTF, "TrFlagCTF TribesGame.Default__TrFlagCTF")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mLogTaken;
			ScriptFunction mLogDropped;
			ScriptFunction mClearHolder;
			ScriptFunction mSendHome;
			ScriptFunction mRemindPlayerAboutFlagTimer;
			ScriptFunction mBroadcastTakenFromBaseMessage;
			ScriptFunction mBroadcastTakenDroppedMessage;
			ScriptFunction mBroadcastCapturedMessage;
			ScriptFunction mBroadcastReturnedMessage;
			ScriptFunction mBroadcastDroppedMessage;
		}
		public @property static final
		{
			ScriptFunction LogTaken() { mixin(MGF!("mLogTaken", "Function TribesGame.TrFlagCTF.LogTaken")()); }
			ScriptFunction LogDropped() { mixin(MGF!("mLogDropped", "Function TribesGame.TrFlagCTF.LogDropped")()); }
			ScriptFunction ClearHolder() { mixin(MGF!("mClearHolder", "Function TribesGame.TrFlagCTF.ClearHolder")()); }
			ScriptFunction SendHome() { mixin(MGF!("mSendHome", "Function TribesGame.TrFlagCTF.SendHome")()); }
			ScriptFunction RemindPlayerAboutFlagTimer() { mixin(MGF!("mRemindPlayerAboutFlagTimer", "Function TribesGame.TrFlagCTF.RemindPlayerAboutFlagTimer")()); }
			ScriptFunction BroadcastTakenFromBaseMessage() { mixin(MGF!("mBroadcastTakenFromBaseMessage", "Function TribesGame.TrFlagCTF.BroadcastTakenFromBaseMessage")()); }
			ScriptFunction BroadcastTakenDroppedMessage() { mixin(MGF!("mBroadcastTakenDroppedMessage", "Function TribesGame.TrFlagCTF.BroadcastTakenDroppedMessage")()); }
			ScriptFunction BroadcastCapturedMessage() { mixin(MGF!("mBroadcastCapturedMessage", "Function TribesGame.TrFlagCTF.BroadcastCapturedMessage")()); }
			ScriptFunction BroadcastReturnedMessage() { mixin(MGF!("mBroadcastReturnedMessage", "Function TribesGame.TrFlagCTF.BroadcastReturnedMessage")()); }
			ScriptFunction BroadcastDroppedMessage() { mixin(MGF!("mBroadcastDroppedMessage", "Function TribesGame.TrFlagCTF.BroadcastDroppedMessage")()); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagCTF.Home")()); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagCTF.Dropped")()); }
	}
	@property final auto ref
	{
		float m_YouHaveTheFlagReminderTime() { mixin(MGPC!(float, 940)()); }
		int m_ReturnedTimeLimit() { mixin(MGPC!(int, 936)()); }
		int m_LastReturnedTime() { mixin(MGPC!(int, 932)()); }
	}
final:
	void LogTaken(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogTaken, params.ptr, cast(void*)0);
	}
	void LogDropped(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogDropped, params.ptr, cast(void*)0);
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
	void RemindPlayerAboutFlagTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemindPlayerAboutFlagTimer, cast(void*)0, cast(void*)0);
	}
	void BroadcastTakenFromBaseMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTakenFromBaseMessage, params.ptr, cast(void*)0);
	}
	void BroadcastTakenDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTakenDroppedMessage, params.ptr, cast(void*)0);
	}
	void BroadcastCapturedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastCapturedMessage, params.ptr, cast(void*)0);
	}
	void BroadcastReturnedMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastReturnedMessage, cast(void*)0, cast(void*)0);
	}
	void BroadcastDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastDroppedMessage, params.ptr, cast(void*)0);
	}
}
