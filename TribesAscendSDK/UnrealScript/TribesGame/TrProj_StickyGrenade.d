module UnrealScript.TribesGame.TrProj_StickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_StickyGrenade : TrProj_Grenade
{
public extern(D):
	@property final
	{
		@property final auto ref Actor m_OldBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 888); }
		bool m_bHasStuckToTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 884) & 0x1) != 0; }
		bool m_bHasStuckToTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 884) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 884) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108038], cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108039], params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108043], params.ptr, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108047], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void OnBaseChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108052], cast(void*)0, cast(void*)0);
	}
}
