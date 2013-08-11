module UnrealScript.TribesGame.TrProj_NovaColt;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NovaColt : TrProjectile
{
public extern(D):
	@property final auto ref
	{
		int m_nNumberBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
		int m_nBouncesAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
	}
	final void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108803], params.ptr, cast(void*)0);
	}
}
