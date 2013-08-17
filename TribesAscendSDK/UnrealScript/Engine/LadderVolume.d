module UnrealScript.Engine.LadderVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Ladder;

extern(C++) interface LadderVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LadderVolume")()); }
	private static __gshared LadderVolume mDefaultProperties;
	@property final static LadderVolume DefaultProperties() { mixin(MGDPC!(LadderVolume, "LadderVolume Engine.Default__LadderVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInUse;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPawnEnteredVolume;
			ScriptFunction mPawnLeavingVolume;
			ScriptFunction mPhysicsChangedFor;
		}
		public @property static final
		{
			ScriptFunction InUse() { mixin(MGF!("mInUse", "Function Engine.LadderVolume.InUse")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.LadderVolume.PostBeginPlay")()); }
			ScriptFunction PawnEnteredVolume() { mixin(MGF!("mPawnEnteredVolume", "Function Engine.LadderVolume.PawnEnteredVolume")()); }
			ScriptFunction PawnLeavingVolume() { mixin(MGF!("mPawnLeavingVolume", "Function Engine.LadderVolume.PawnLeavingVolume")()); }
			ScriptFunction PhysicsChangedFor() { mixin(MGF!("mPhysicsChangedFor", "Function Engine.LadderVolume.PhysicsChangedFor")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector ClimbDir() { mixin(MGPC!(Vector, 608)()); }
			Pawn PendingClimber() { mixin(MGPC!(Pawn, 628)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'WallDirArrow'!
			Ladder LadderList() { mixin(MGPC!(Ladder, 620)()); }
			Vector LookDir() { mixin(MGPC!(Vector, 596)()); }
			Rotator WallDir() { mixin(MGPC!(Rotator, 584)()); }
		}
		bool bAllowLadderStrafing() { mixin(MGBPC!(624, 0x4)()); }
		bool bAllowLadderStrafing(bool val) { mixin(MSBPC!(624, 0x4)()); }
		bool bAutoPath() { mixin(MGBPC!(624, 0x2)()); }
		bool bAutoPath(bool val) { mixin(MSBPC!(624, 0x2)()); }
		bool bNoPhysicalLadder() { mixin(MGBPC!(624, 0x1)()); }
		bool bNoPhysicalLadder(bool val) { mixin(MSBPC!(624, 0x1)()); }
	}
final:
	bool InUse(Pawn Ignored)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Ignored;
		(cast(ScriptObject)this).ProcessEvent(Functions.InUse, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PawnEnteredVolume(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredVolume, params.ptr, cast(void*)0);
	}
	void PawnLeavingVolume(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeavingVolume, params.ptr, cast(void*)0);
	}
	void PhysicsChangedFor(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PhysicsChangedFor, params.ptr, cast(void*)0);
	}
}
