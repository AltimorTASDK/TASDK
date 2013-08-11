module UnrealScript.Engine.DMC_Base;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface DMC_Base : Actor
{
public extern(D):
	@property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) CreatedComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 476); }
final:
	void PrintString(ScriptString InString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14529], params.ptr, cast(void*)0);
	}
	float GetWorldTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14531], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float Conv_IntToFloat(int InInt)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14533], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	ScriptString Conv_FloatToString(float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InFloat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14536], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_IntToString(int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14539], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_BoolToString(bool InBool)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = InBool;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14542], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString Conv_VectorToString(Vector InVec)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14545], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString Conv_RotatorToString(Rotator InRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14548], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	Vector MakeVector(float X, float Y, float Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14551], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14557], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14562], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14568], params.ptr, cast(void*)0);
		*Pitch = *cast(float*)&params[12];
		*Yaw = *cast(float*)&params[16];
		*Roll = *cast(float*)&params[20];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AddComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* Template)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = Template;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14573], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void DMCCreate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14576], cast(void*)0, cast(void*)0);
	}
	void DMCTakeDamage(int DamageAmount, Vector HitLocation, Vector Momentum)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14577], params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14581], params.ptr, cast(void*)0);
	}
}
