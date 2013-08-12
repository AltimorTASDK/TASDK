module UnrealScript.Engine.ReachSpec;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface ReachSpec : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ReachSpec")); }
	private static __gshared ReachSpec mDefaultProperties;
	@property final static ReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ReachSpec)("ReachSpec Engine.Default__ReachSpec")); }
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
			ScriptFunction CostFor() { return mCostFor ? mCostFor : (mCostFor = ScriptObject.Find!(ScriptFunction)("Function Engine.ReachSpec.CostFor")); }
			ScriptFunction GetEnd() { return mGetEnd ? mGetEnd : (mGetEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.ReachSpec.GetEnd")); }
			ScriptFunction GetDirection() { return mGetDirection ? mGetDirection : (mGetDirection = ScriptObject.Find!(ScriptFunction)("Function Engine.ReachSpec.GetDirection")); }
			ScriptFunction IsBlockedFor() { return mIsBlockedFor ? mIsBlockedFor : (mIsBlockedFor = ScriptObject.Find!(ScriptFunction)("Function Engine.ReachSpec.IsBlockedFor")); }
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
			ScriptArray!(ScriptClass) PruneSpecList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 128); }
			Actor BlockedBy() { return *cast(Actor*)(cast(size_t)cast(void*)this + 140); }
			ubyte PathColorIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 121); }
			ubyte bPruned() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 120); }
			int MaxLandingVelocity() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			int reachFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			int CollisionHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int CollisionRadius() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			Actor.ActorReference End() { return *cast(Actor.ActorReference*)(cast(size_t)cast(void*)this + 84); }
			NavigationPoint Start() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 80); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
			int Distance() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer NavOctreeObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x10) != 0; }
		bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x10; } return val; }
		bool bSkipPrune() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x8) != 0; }
		bool bSkipPrune(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x8; } return val; }
		bool bCheckForObstructions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x4) != 0; }
		bool bCheckForObstructions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x4; } return val; }
		bool bCanCutCorners() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bCanCutCorners(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool bAddToNavigationOctree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bAddToNavigationOctree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
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
