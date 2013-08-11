module UnrealScript.TribesGame.TrDeployable_DropJammer;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_DropJammer : TrDeployable_Sensor
{
public extern(D):
final:
	bool ShouldDetectPawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80010], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80013], cast(void*)0, cast(void*)0);
	}
	void AddDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80016], params.ptr, cast(void*)0);
	}
	void RemoveDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80019], params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80028], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
