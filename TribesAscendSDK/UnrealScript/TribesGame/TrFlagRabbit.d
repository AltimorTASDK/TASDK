module UnrealScript.TribesGame.TrFlagRabbit;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagRabbit : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFlagRabbit")); }
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
			ScriptFunction SetHolder() { return mSetHolder ? mSetHolder : (mSetHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagRabbit.SetHolder")); }
			ScriptFunction ClearHolder() { return mClearHolder ? mClearHolder : (mClearHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagRabbit.ClearHolder")); }
			ScriptFunction SendHome() { return mSendHome ? mSendHome : (mSendHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagRabbit.SendHome")); }
			ScriptFunction BroadcastReturnedMessage() { return mBroadcastReturnedMessage ? mBroadcastReturnedMessage : (mBroadcastReturnedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagRabbit.BroadcastReturnedMessage")); }
		}
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
