module UnrealScript.TribesGame.TrFlagTeamRabbit;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagTeamRabbit : TrFlagBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFlagTeamRabbit")); }
	private static __gshared TrFlagTeamRabbit mDefaultProperties;
	@property final static TrFlagTeamRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFlagTeamRabbit)("TrFlagTeamRabbit TribesGame.Default__TrFlagTeamRabbit")); }
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
			ScriptFunction SetHolder() { return mSetHolder ? mSetHolder : (mSetHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagTeamRabbit.SetHolder")); }
			ScriptFunction ClearHolder() { return mClearHolder ? mClearHolder : (mClearHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagTeamRabbit.ClearHolder")); }
			ScriptFunction SendHome() { return mSendHome ? mSendHome : (mSendHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagTeamRabbit.SendHome")); }
			ScriptFunction BroadcastReturnedMessage() { return mBroadcastReturnedMessage ? mBroadcastReturnedMessage : (mBroadcastReturnedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagTeamRabbit.BroadcastReturnedMessage")); }
			ScriptFunction ClientReturnedHome() { return mClientReturnedHome ? mClientReturnedHome : (mClientReturnedHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagTeamRabbit.ClientReturnedHome")); }
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
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReturnedHome, cast(void*)0, cast(void*)0);
	}
}
