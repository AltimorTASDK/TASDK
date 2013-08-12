module UnrealScript.TribesGame.TrBotAIController;

import ScriptClasses;
import UnrealScript.TribesGame.TrSeqAct_AIStartJetting;
import UnrealScript.TribesGame.TrSeqAct_AIStartSkiing;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_AIMoveToActor;
import UnrealScript.TribesGame.TrSeqAct_AIStopJetting;
import UnrealScript.TribesGame.TrSeqAct_AIStopSkiing;
import UnrealScript.UTGame.UTBot;

extern(C++) interface TrBotAIController : UTBot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBotAIController")); }
	private static __gshared TrBotAIController mDefaultProperties;
	@property final static TrBotAIController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBotAIController)("TrBotAIController TribesGame.Default__TrBotAIController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnAIStartJetting;
			ScriptFunction mOnAIStopJetting;
			ScriptFunction mOnAIStartSkiing;
			ScriptFunction mOnAIStopSkiing;
			ScriptFunction mOnAIMoveToActor;
			ScriptFunction mStartJetting;
			ScriptFunction mStopJetting;
			ScriptFunction mPossess;
		}
		public @property static final
		{
			ScriptFunction OnAIStartJetting() { return mOnAIStartJetting ? mOnAIStartJetting : (mOnAIStartJetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.OnAIStartJetting")); }
			ScriptFunction OnAIStopJetting() { return mOnAIStopJetting ? mOnAIStopJetting : (mOnAIStopJetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.OnAIStopJetting")); }
			ScriptFunction OnAIStartSkiing() { return mOnAIStartSkiing ? mOnAIStartSkiing : (mOnAIStartSkiing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.OnAIStartSkiing")); }
			ScriptFunction OnAIStopSkiing() { return mOnAIStopSkiing ? mOnAIStopSkiing : (mOnAIStopSkiing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.OnAIStopSkiing")); }
			ScriptFunction OnAIMoveToActor() { return mOnAIMoveToActor ? mOnAIMoveToActor : (mOnAIMoveToActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.OnAIMoveToActor")); }
			ScriptFunction StartJetting() { return mStartJetting ? mStartJetting : (mStartJetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.StartJetting")); }
			ScriptFunction StopJetting() { return mStopJetting ? mStopJetting : (mStopJetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.StopJetting")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotAIController.Possess")); }
		}
	}
final:
	void OnAIStartJetting(TrSeqAct_AIStartJetting Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStartJetting*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStartJetting, params.ptr, cast(void*)0);
	}
	void OnAIStopJetting(TrSeqAct_AIStopJetting Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStopJetting*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStopJetting, params.ptr, cast(void*)0);
	}
	void OnAIStartSkiing(TrSeqAct_AIStartSkiing Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStartSkiing*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStartSkiing, params.ptr, cast(void*)0);
	}
	void OnAIStopSkiing(TrSeqAct_AIStopSkiing Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStopSkiing*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStopSkiing, params.ptr, cast(void*)0);
	}
	void OnAIMoveToActor(SeqAct_AIMoveToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AIMoveToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIMoveToActor, params.ptr, cast(void*)0);
	}
	void StartJetting(Vector Direction, float Magnitude)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(float*)&params[12] = Magnitude;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartJetting, params.ptr, cast(void*)0);
	}
	void StopJetting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopJetting, cast(void*)0, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Possess, params.ptr, cast(void*)0);
	}
}
