module UnrealScript.Engine.SplineActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_ToggleHidden;

extern(C++) interface SplineActor : Actor
{
	struct SplineConnection
	{
		public @property final auto ref SplineActor ConnectTo() { return *cast(SplineActor*)(cast(size_t)&this + 4); }
		private ubyte __ConnectTo[4];
	}
	public @property final auto ref ScriptArray!(SplineActor.SplineConnection) Connections() { return *cast(ScriptArray!(SplineActor.SplineConnection)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref ScriptArray!(SplineActor) LinksFrom() { return *cast(ScriptArray!(SplineActor)*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref UObject.InterpCurveFloat SplineVelocityOverTime() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref int visitedWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int bestPathWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref SplineActor previousPath() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref SplineActor prevOrdered() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref SplineActor nextOrdered() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 520); }
	public @property final bool bAlreadyVisited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
	public @property final bool bAlreadyVisited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
	public @property final bool bDisableDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bDisableDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color SplineColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref Vector SplineActorTangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 488); }
	final Vector GetWorldSpaceTangent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27103], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void UpdateSplineComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27105], cast(void*)0, cast(void*)0);
	}
	final void UpdateConnectedSplineComponents(bool bFinish)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFinish;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27106], params.ptr, cast(void*)0);
	}
	final void AddConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27108], params.ptr, cast(void*)0);
	}
	final bool IsConnectedTo(SplineActor NextActor, bool bCheckForDisableDestination)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		*cast(bool*)&params[4] = bCheckForDisableDestination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27110], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* FindSplineComponentTo(SplineActor NextActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27114], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4];
	}
	final SplineActor FindTargetForComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SplineComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SplineComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27117], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	final void BreakConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27120], params.ptr, cast(void*)0);
	}
	final void BreakAllConnections()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27122], cast(void*)0, cast(void*)0);
	}
	final void BreakAllConnectionsFrom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27123], cast(void*)0, cast(void*)0);
	}
	final SplineActor GetRandomConnection(bool bUseLinksFrom)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27124], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	final SplineActor GetBestConnectionInDirection(Vector DesiredDir, bool bUseLinksFrom)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredDir;
		*cast(bool*)&params[12] = bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27127], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[16];
	}
	final bool FindSplinePathTo(SplineActor Goal, ScriptArray!(SplineActor)* OutRoute)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SplineActor*)params.ptr = Goal;
		*cast(ScriptArray!(SplineActor)*)&params[4] = *OutRoute;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27131], params.ptr, cast(void*)0);
		*OutRoute = *cast(ScriptArray!(SplineActor)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void GetAllConnectedSplineActors(ScriptArray!(SplineActor)* OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SplineActor)*)params.ptr = *OutSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27136], params.ptr, cast(void*)0);
		*OutSet = *cast(ScriptArray!(SplineActor)*)params.ptr;
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27139], params.ptr, cast(void*)0);
	}
	final void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27141], params.ptr, cast(void*)0);
	}
}
