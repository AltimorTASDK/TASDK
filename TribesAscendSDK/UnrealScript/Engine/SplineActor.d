module UnrealScript.Engine.SplineActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_ToggleHidden;

extern(C++) interface SplineActor : Actor
{
public extern(D):
	struct SplineConnection
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref SplineActor ConnectTo() { return *cast(SplineActor*)(cast(size_t)&this + 4); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SplineActor.SplineConnection) Connections() { return *cast(ScriptArray!(SplineActor.SplineConnection)*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(SplineActor) LinksFrom() { return *cast(ScriptArray!(SplineActor)*)(cast(size_t)cast(void*)this + 508); }
			UObject.InterpCurveFloat SplineVelocityOverTime() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 540); }
			int visitedWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
			int bestPathWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			SplineActor previousPath() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 528); }
			SplineActor prevOrdered() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 524); }
			SplineActor nextOrdered() { return *cast(SplineActor*)(cast(size_t)cast(void*)this + 520); }
			UObject.Color SplineColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 500); }
			Vector SplineActorTangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bAlreadyVisited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
		bool bAlreadyVisited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
		bool bDisableDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bDisableDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	Vector GetWorldSpaceTangent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27103], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void UpdateSplineComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27105], cast(void*)0, cast(void*)0);
	}
	void UpdateConnectedSplineComponents(bool bFinish)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFinish;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27106], params.ptr, cast(void*)0);
	}
	void AddConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27108], params.ptr, cast(void*)0);
	}
	bool IsConnectedTo(SplineActor NextActor, bool bCheckForDisableDestination)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		*cast(bool*)&params[4] = bCheckForDisableDestination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27110], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FindSplineComponentTo(SplineActor NextActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27114], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	SplineActor FindTargetForComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SplineComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SplineComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27117], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	void BreakConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27120], params.ptr, cast(void*)0);
	}
	void BreakAllConnections()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27122], cast(void*)0, cast(void*)0);
	}
	void BreakAllConnectionsFrom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27123], cast(void*)0, cast(void*)0);
	}
	SplineActor GetRandomConnection(bool bUseLinksFrom)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27124], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	SplineActor GetBestConnectionInDirection(Vector DesiredDir, bool bUseLinksFrom)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredDir;
		*cast(bool*)&params[12] = bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27127], params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[16];
	}
	bool FindSplinePathTo(SplineActor Goal, ScriptArray!(SplineActor)* OutRoute)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SplineActor*)params.ptr = Goal;
		*cast(ScriptArray!(SplineActor)*)&params[4] = *OutRoute;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27131], params.ptr, cast(void*)0);
		*OutRoute = *cast(ScriptArray!(SplineActor)*)&params[4];
		return *cast(bool*)&params[16];
	}
	void GetAllConnectedSplineActors(ScriptArray!(SplineActor)* OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SplineActor)*)params.ptr = *OutSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27136], params.ptr, cast(void*)0);
		*OutSet = *cast(ScriptArray!(SplineActor)*)params.ptr;
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27139], params.ptr, cast(void*)0);
	}
	void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27141], params.ptr, cast(void*)0);
	}
}
