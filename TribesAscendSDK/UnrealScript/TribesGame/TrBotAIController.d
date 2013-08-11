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
final:
	void OnAIStartJetting(TrSeqAct_AIStartJetting Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStartJetting*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72181], params.ptr, cast(void*)0);
	}
	void OnAIStopJetting(TrSeqAct_AIStopJetting Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStopJetting*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72187], params.ptr, cast(void*)0);
	}
	void OnAIStartSkiing(TrSeqAct_AIStartSkiing Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStartSkiing*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72191], params.ptr, cast(void*)0);
	}
	void OnAIStopSkiing(TrSeqAct_AIStopSkiing Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_AIStopSkiing*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72196], params.ptr, cast(void*)0);
	}
	void OnAIMoveToActor(SeqAct_AIMoveToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AIMoveToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72200], params.ptr, cast(void*)0);
	}
	void StartJetting(Vector Direction, float Magnitude)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(float*)&params[12] = Magnitude;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72202], params.ptr, cast(void*)0);
	}
	void StopJetting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72207], cast(void*)0, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72209], params.ptr, cast(void*)0);
	}
}
