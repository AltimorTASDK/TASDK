module UnrealScript.Engine.SplineActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_ToggleHidden;

extern(C++) interface SplineActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SplineActor")()); }
	private static __gshared SplineActor mDefaultProperties;
	@property final static SplineActor DefaultProperties() { mixin(MGDPC!(SplineActor, "SplineActor Engine.Default__SplineActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetWorldSpaceTangent;
			ScriptFunction mUpdateSplineComponents;
			ScriptFunction mUpdateConnectedSplineComponents;
			ScriptFunction mAddConnectionTo;
			ScriptFunction mIsConnectedTo;
			ScriptFunction mFindSplineComponentTo;
			ScriptFunction mFindTargetForComponent;
			ScriptFunction mBreakConnectionTo;
			ScriptFunction mBreakAllConnections;
			ScriptFunction mBreakAllConnectionsFrom;
			ScriptFunction mGetRandomConnection;
			ScriptFunction mGetBestConnectionInDirection;
			ScriptFunction mFindSplinePathTo;
			ScriptFunction mGetAllConnectedSplineActors;
			ScriptFunction mOnToggle;
			ScriptFunction mOnToggleHidden;
		}
		public @property static final
		{
			ScriptFunction GetWorldSpaceTangent() { mixin(MGF!("mGetWorldSpaceTangent", "Function Engine.SplineActor.GetWorldSpaceTangent")()); }
			ScriptFunction UpdateSplineComponents() { mixin(MGF!("mUpdateSplineComponents", "Function Engine.SplineActor.UpdateSplineComponents")()); }
			ScriptFunction UpdateConnectedSplineComponents() { mixin(MGF!("mUpdateConnectedSplineComponents", "Function Engine.SplineActor.UpdateConnectedSplineComponents")()); }
			ScriptFunction AddConnectionTo() { mixin(MGF!("mAddConnectionTo", "Function Engine.SplineActor.AddConnectionTo")()); }
			ScriptFunction IsConnectedTo() { mixin(MGF!("mIsConnectedTo", "Function Engine.SplineActor.IsConnectedTo")()); }
			ScriptFunction FindSplineComponentTo() { mixin(MGF!("mFindSplineComponentTo", "Function Engine.SplineActor.FindSplineComponentTo")()); }
			ScriptFunction FindTargetForComponent() { mixin(MGF!("mFindTargetForComponent", "Function Engine.SplineActor.FindTargetForComponent")()); }
			ScriptFunction BreakConnectionTo() { mixin(MGF!("mBreakConnectionTo", "Function Engine.SplineActor.BreakConnectionTo")()); }
			ScriptFunction BreakAllConnections() { mixin(MGF!("mBreakAllConnections", "Function Engine.SplineActor.BreakAllConnections")()); }
			ScriptFunction BreakAllConnectionsFrom() { mixin(MGF!("mBreakAllConnectionsFrom", "Function Engine.SplineActor.BreakAllConnectionsFrom")()); }
			ScriptFunction GetRandomConnection() { mixin(MGF!("mGetRandomConnection", "Function Engine.SplineActor.GetRandomConnection")()); }
			ScriptFunction GetBestConnectionInDirection() { mixin(MGF!("mGetBestConnectionInDirection", "Function Engine.SplineActor.GetBestConnectionInDirection")()); }
			ScriptFunction FindSplinePathTo() { mixin(MGF!("mFindSplinePathTo", "Function Engine.SplineActor.FindSplinePathTo")()); }
			ScriptFunction GetAllConnectedSplineActors() { mixin(MGF!("mGetAllConnectedSplineActors", "Function Engine.SplineActor.GetAllConnectedSplineActors")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.SplineActor.OnToggle")()); }
			ScriptFunction OnToggleHidden() { mixin(MGF!("mOnToggleHidden", "Function Engine.SplineActor.OnToggleHidden")()); }
		}
	}
	struct SplineConnection
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SplineActor.SplineConnection")()); }
		@property final auto ref
		{
			SplineActor ConnectTo() { mixin(MGPS!("SplineActor", 4)()); }
			// WARNING: Property 'SplineComponent' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SplineActor.SplineConnection) Connections() { mixin(MGPC!("ScriptArray!(SplineActor.SplineConnection)", 476)()); }
			ScriptArray!(SplineActor) LinksFrom() { mixin(MGPC!("ScriptArray!(SplineActor)", 508)()); }
			UObject.InterpCurveFloat SplineVelocityOverTime() { mixin(MGPC!("UObject.InterpCurveFloat", 540)()); }
			int visitedWeight() { mixin(MGPC!("int", 536)()); }
			int bestPathWeight() { mixin(MGPC!("int", 532)()); }
			SplineActor previousPath() { mixin(MGPC!("SplineActor", 528)()); }
			SplineActor prevOrdered() { mixin(MGPC!("SplineActor", 524)()); }
			SplineActor nextOrdered() { mixin(MGPC!("SplineActor", 520)()); }
			UObject.Color SplineColor() { mixin(MGPC!("UObject.Color", 500)()); }
			Vector SplineActorTangent() { mixin(MGPC!("Vector", 488)()); }
		}
		bool bAlreadyVisited() { mixin(MGBPC!(504, 0x2)()); }
		bool bAlreadyVisited(bool val) { mixin(MSBPC!(504, 0x2)()); }
		bool bDisableDestination() { mixin(MGBPC!(504, 0x1)()); }
		bool bDisableDestination(bool val) { mixin(MSBPC!(504, 0x1)()); }
	}
final:
	Vector GetWorldSpaceTangent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWorldSpaceTangent, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void UpdateSplineComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSplineComponents, cast(void*)0, cast(void*)0);
	}
	void UpdateConnectedSplineComponents(bool bFinish)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateConnectedSplineComponents, params.ptr, cast(void*)0);
	}
	void AddConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddConnectionTo, params.ptr, cast(void*)0);
	}
	bool IsConnectedTo(SplineActor NextActor, bool bCheckForDisableDestination)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		*cast(bool*)&params[4] = bCheckForDisableDestination;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsConnectedTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FindSplineComponentTo(SplineActor NextActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSplineComponentTo, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.FindTargetForComponent, params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	void BreakConnectionTo(SplineActor NextActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SplineActor*)params.ptr = NextActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakConnectionTo, params.ptr, cast(void*)0);
	}
	void BreakAllConnections()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakAllConnections, cast(void*)0, cast(void*)0);
	}
	void BreakAllConnectionsFrom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakAllConnectionsFrom, cast(void*)0, cast(void*)0);
	}
	SplineActor GetRandomConnection(bool* bUseLinksFrom = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bUseLinksFrom !is null)
			*cast(bool*)params.ptr = *bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRandomConnection, params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[4];
	}
	SplineActor GetBestConnectionInDirection(Vector DesiredDir, bool* bUseLinksFrom = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredDir;
		if (bUseLinksFrom !is null)
			*cast(bool*)&params[12] = *bUseLinksFrom;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestConnectionInDirection, params.ptr, cast(void*)0);
		return *cast(SplineActor*)&params[16];
	}
	bool FindSplinePathTo(SplineActor Goal, ref ScriptArray!(SplineActor) OutRoute)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SplineActor*)params.ptr = Goal;
		*cast(ScriptArray!(SplineActor)*)&params[4] = OutRoute;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSplinePathTo, params.ptr, cast(void*)0);
		OutRoute = *cast(ScriptArray!(SplineActor)*)&params[4];
		return *cast(bool*)&params[16];
	}
	void GetAllConnectedSplineActors(ref ScriptArray!(SplineActor) OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SplineActor)*)params.ptr = OutSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllConnectedSplineActors, params.ptr, cast(void*)0);
		OutSet = *cast(ScriptArray!(SplineActor)*)params.ptr;
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleHidden, params.ptr, cast(void*)0);
	}
}
