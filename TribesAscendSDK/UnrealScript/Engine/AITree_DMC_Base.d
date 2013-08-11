module UnrealScript.Engine.AITree_DMC_Base;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AICommandNodeBase;

extern(C++) interface AITree_DMC_Base : UObject
{
public extern(D):
final:
	void PrintString(ScriptString InString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10001], params.ptr, cast(void*)0);
	}
	float GetWorldTime(Actor inActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = inActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10003], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float Conv_IntToFloat(int InInt)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10006], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	ScriptString Conv_FloatToString(float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InFloat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10009], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_IntToString(int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10012], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_BoolToString(bool InBool)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = InBool;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10015], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_VectorToString(Vector InVec)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10018], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString Conv_RotatorToString(Rotator InRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10021], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	Vector MakeVector(float X, float Y, float Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10024], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void BreakVector(Vector InVec, float* X, float* Y, float* Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		*cast(float*)&params[12] = *X;
		*cast(float*)&params[16] = *Y;
		*cast(float*)&params[20] = *Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10030], params.ptr, cast(void*)0);
		*X = *cast(float*)&params[12];
		*Y = *cast(float*)&params[16];
		*Z = *cast(float*)&params[20];
	}
	Rotator MakeRot(float Pitch, float Yaw, float Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = Pitch;
		*cast(float*)&params[4] = Yaw;
		*cast(float*)&params[8] = Roll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10035], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	void BreakRot(Rotator InRot, float* Pitch, float* Yaw, float* Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		*cast(float*)&params[12] = *Pitch;
		*cast(float*)&params[16] = *Yaw;
		*cast(float*)&params[20] = *Roll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10041], params.ptr, cast(void*)0);
		*Pitch = *cast(float*)&params[12];
		*Yaw = *cast(float*)&params[16];
		*Roll = *cast(float*)&params[20];
	}
	void CalculateUtilityRating(AICommandNodeBase CommandNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AICommandNodeBase*)params.ptr = CommandNode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10046], params.ptr, cast(void*)0);
	}
}
