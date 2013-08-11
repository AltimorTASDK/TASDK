module UnrealScript.UTGame.UTAutoCrouchVolume;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface UTAutoCrouchVolume : Volume
{
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40659], params.ptr, cast(void*)0);
	}
	final void SetCrouch(Pawn P, ubyte bCrouch)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		params[4] = bCrouch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40665], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40672], params.ptr, cast(void*)0);
	}
	final void CrouchTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40675], cast(void*)0, cast(void*)0);
	}
}
