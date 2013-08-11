module UnrealScript.TribesGame.TrCollisionProxy_Rage;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy_Rage : TrCollisionProxy
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74611], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74616], params.ptr, cast(void*)0);
	}
	final void ForceProximityScan(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74618], params.ptr, cast(void*)0);
	}
}
