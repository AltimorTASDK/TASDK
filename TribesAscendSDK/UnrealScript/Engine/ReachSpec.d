module UnrealScript.Engine.ReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface ReachSpec : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ReachSpec")); }
	private static __gshared ReachSpec mDefaultProperties;
	@property final static ReachSpec DefaultProperties() { mixin(MGDPC("ReachSpec", "ReachSpec Engine.Default__ReachSpec")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCostFor;
			ScriptFunction mGetEnd;
			ScriptFunction mGetDirection;
			ScriptFunction mIsBlockedFor;
		}
		public @property static final
		{
			ScriptFunction CostFor() { mixin(MGF("mCostFor", "Function Engine.ReachSpec.CostFor")); }
			ScriptFunction GetEnd() { mixin(MGF("mGetEnd", "Function Engine.ReachSpec.GetEnd")); }
			ScriptFunction GetDirection() { mixin(MGF("mGetDirection", "Function Engine.ReachSpec.GetDirection")); }
			ScriptFunction IsBlockedFor() { mixin(MGF("mIsBlockedFor", "Function Engine.ReachSpec.IsBlockedFor")); }
		}
	}
	static struct Constants
	{
		enum BLOCKEDPATHCOST = 10000000;
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) PruneSpecList() { mixin(MGPC("ScriptArray!(ScriptClass)", 128)); }
			Actor BlockedBy() { mixin(MGPC("Actor", 140)); }
			ubyte PathColorIndex() { mixin(MGPC("ubyte", 121)); }
			ubyte bPruned() { mixin(MGPC("ubyte", 120)); }
			int MaxLandingVelocity() { mixin(MGPC("int", 116)); }
			int reachFlags() { mixin(MGPC("int", 112)); }
			int CollisionHeight() { mixin(MGPC("int", 108)); }
			int CollisionRadius() { mixin(MGPC("int", 104)); }
			Actor.ActorReference End() { mixin(MGPC("Actor.ActorReference", 84)); }
			NavigationPoint Start() { mixin(MGPC("NavigationPoint", 80)); }
			Vector Direction() { mixin(MGPC("Vector", 68)); }
			int Distance() { mixin(MGPC("int", 64)); }
			UObject.Pointer NavOctreeObject() { mixin(MGPC("UObject.Pointer", 60)); }
		}
		bool bDisabled() { mixin(MGBPC(124, 0x10)); }
		bool bDisabled(bool val) { mixin(MSBPC(124, 0x10)); }
		bool bSkipPrune() { mixin(MGBPC(124, 0x8)); }
		bool bSkipPrune(bool val) { mixin(MSBPC(124, 0x8)); }
		bool bCheckForObstructions() { mixin(MGBPC(124, 0x4)); }
		bool bCheckForObstructions(bool val) { mixin(MSBPC(124, 0x4)); }
		bool bCanCutCorners() { mixin(MGBPC(124, 0x2)); }
		bool bCanCutCorners(bool val) { mixin(MSBPC(124, 0x2)); }
		bool bAddToNavigationOctree() { mixin(MGBPC(124, 0x1)); }
		bool bAddToNavigationOctree(bool val) { mixin(MSBPC(124, 0x1)); }
	}
final:
	int CostFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CostFor, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	NavigationPoint GetEnd()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEnd, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)params.ptr;
	}
	Vector GetDirection()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirection, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	bool IsBlockedFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBlockedFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
