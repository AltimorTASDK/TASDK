module UnrealScript.UDKBase.UDKJumpPad;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathNode;

extern(C++) interface UDKJumpPad : NavigationPoint
{
public extern(D):
	@property final auto ref
	{
		float JumpAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
		float JumpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
		SoundCue JumpSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 708); }
		PathNode JumpTarget() { return *cast(PathNode*)(cast(size_t)cast(void*)this + 704); }
		Vector JumpVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 692); }
	}
final:
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34933], params.ptr, cast(void*)0);
	}
	void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34938], params.ptr, cast(void*)0);
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34943], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
