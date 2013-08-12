module UnrealScript.TribesGame.TrFlagCTF;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagCTF : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFlagCTF")); }
	private static __gshared TrFlagCTF mDefaultProperties;
	@property final static TrFlagCTF DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFlagCTF)("TrFlagCTF TribesGame.Default__TrFlagCTF")); }
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
			ScriptFunction LogTaken() { return mLogTaken ? mLogTaken : (mLogTaken = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.LogTaken")); }
			ScriptFunction LogDropped() { return mLogDropped ? mLogDropped : (mLogDropped = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.LogDropped")); }
			ScriptFunction ClearHolder() { return mClearHolder ? mClearHolder : (mClearHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.ClearHolder")); }
			ScriptFunction SendHome() { return mSendHome ? mSendHome : (mSendHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.SendHome")); }
			ScriptFunction RemindPlayerAboutFlagTimer() { return mRemindPlayerAboutFlagTimer ? mRemindPlayerAboutFlagTimer : (mRemindPlayerAboutFlagTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.RemindPlayerAboutFlagTimer")); }
			ScriptFunction BroadcastTakenFromBaseMessage() { return mBroadcastTakenFromBaseMessage ? mBroadcastTakenFromBaseMessage : (mBroadcastTakenFromBaseMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.BroadcastTakenFromBaseMessage")); }
			ScriptFunction BroadcastTakenDroppedMessage() { return mBroadcastTakenDroppedMessage ? mBroadcastTakenDroppedMessage : (mBroadcastTakenDroppedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.BroadcastTakenDroppedMessage")); }
			ScriptFunction BroadcastCapturedMessage() { return mBroadcastCapturedMessage ? mBroadcastCapturedMessage : (mBroadcastCapturedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.BroadcastCapturedMessage")); }
			ScriptFunction BroadcastReturnedMessage() { return mBroadcastReturnedMessage ? mBroadcastReturnedMessage : (mBroadcastReturnedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.BroadcastReturnedMessage")); }
			ScriptFunction BroadcastDroppedMessage() { return mBroadcastDroppedMessage ? mBroadcastDroppedMessage : (mBroadcastDroppedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF.BroadcastDroppedMessage")); }
		}
	}
	@property final auto ref
	{
		float m_YouHaveTheFlagReminderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 940); }
		int m_ReturnedTimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 936); }
		int m_LastReturnedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 932); }
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
