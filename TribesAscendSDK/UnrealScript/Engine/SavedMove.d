module UnrealScript.Engine.SavedMove;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface SavedMove : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SavedMove")()); }
	private static __gshared SavedMove mDefaultProperties;
	@property final static SavedMove DefaultProperties() { mixin(MGDPC!(SavedMove, "SavedMove Engine.Default__SavedMove")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetFlags;
			ScriptFunction mCompressedFlags;
			ScriptFunction mIsImportantMove;
			ScriptFunction mCanCombineWith;
			ScriptFunction mGetStartLocation;
			ScriptFunction mClear;
			ScriptFunction mPostUpdate;
			ScriptFunction mSetInitialPosition;
			ScriptFunction mSetMoveFor;
			ScriptFunction mPrepMoveFor;
			ScriptFunction mResetMoveFor;
			ScriptFunction mGetDebugString;
		}
		public @property static final
		{
			ScriptFunction SetFlags() { mixin(MGF!("mSetFlags", "Function Engine.SavedMove.SetFlags")()); }
			ScriptFunction CompressedFlags() { mixin(MGF!("mCompressedFlags", "Function Engine.SavedMove.CompressedFlags")()); }
			ScriptFunction IsImportantMove() { mixin(MGF!("mIsImportantMove", "Function Engine.SavedMove.IsImportantMove")()); }
			ScriptFunction CanCombineWith() { mixin(MGF!("mCanCombineWith", "Function Engine.SavedMove.CanCombineWith")()); }
			ScriptFunction GetStartLocation() { mixin(MGF!("mGetStartLocation", "Function Engine.SavedMove.GetStartLocation")()); }
			ScriptFunction Clear() { mixin(MGF!("mClear", "Function Engine.SavedMove.Clear")()); }
			ScriptFunction PostUpdate() { mixin(MGF!("mPostUpdate", "Function Engine.SavedMove.PostUpdate")()); }
			ScriptFunction SetInitialPosition() { mixin(MGF!("mSetInitialPosition", "Function Engine.SavedMove.SetInitialPosition")()); }
			ScriptFunction SetMoveFor() { mixin(MGF!("mSetMoveFor", "Function Engine.SavedMove.SetMoveFor")()); }
			ScriptFunction PrepMoveFor() { mixin(MGF!("mPrepMoveFor", "Function Engine.SavedMove.PrepMoveFor")()); }
			ScriptFunction ResetMoveFor() { mixin(MGF!("mResetMoveFor", "Function Engine.SavedMove.ResetMoveFor")()); }
			ScriptFunction GetDebugString() { mixin(MGF!("mGetDebugString", "Function Engine.SavedMove.GetDebugString")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float TimeStamp() { mixin(MGPC!(float, 64)()); }
			SavedMove NextMove() { mixin(MGPC!(SavedMove, 60)()); }
			Vector Acceleration() { mixin(MGPC!(Vector, 176)()); }
			Actor EndBase() { mixin(MGPC!(Actor, 204)()); }
			Vector SavedRelativeLocation() { mixin(MGPC!(Vector, 152)()); }
			Vector SavedLocation() { mixin(MGPC!(Vector, 128)()); }
			Vector SavedVelocity() { mixin(MGPC!(Vector, 140)()); }
			float Delta() { mixin(MGPC!(float, 68)()); }
			Actor.EDoubleClickDir DoubleClickMove() { mixin(MGPC!(Actor.EDoubleClickDir, 76)()); }
			Vector StartVelocity() { mixin(MGPC!(Vector, 104)()); }
			Actor StartBase() { mixin(MGPC!(Actor, 200)()); }
			Vector StartFloor() { mixin(MGPC!(Vector, 116)()); }
			Rotator Rotation() { mixin(MGPC!(Rotator, 188)()); }
			Vector RootMotionInterpCurveLastValue() { mixin(MGPC!(Vector, 220)()); }
			float RootMotionInterpCurrentTime() { mixin(MGPC!(float, 216)()); }
			float AccelDotThreshold() { mixin(MGPC!(float, 212)()); }
			float CustomTimeDilation() { mixin(MGPC!(float, 208)()); }
			Vector RMVelocity() { mixin(MGPC!(Vector, 164)()); }
			Vector StartRelativeLocation() { mixin(MGPC!(Vector, 92)()); }
			Vector StartLocation() { mixin(MGPC!(Vector, 80)()); }
			SkeletalMeshComponent.ERootMotionMode RootMotionMode() { mixin(MGPC!(SkeletalMeshComponent.ERootMotionMode, 78)()); }
			Actor.EPhysics SavedPhysics() { mixin(MGPC!(Actor.EPhysics, 77)()); }
		}
		bool bForceRMVelocity() { mixin(MGBPC!(72, 0x20)()); }
		bool bForceRMVelocity(bool val) { mixin(MSBPC!(72, 0x20)()); }
		bool bRootMotionFromInterpCurve() { mixin(MGBPC!(72, 0x80)()); }
		bool bRootMotionFromInterpCurve(bool val) { mixin(MSBPC!(72, 0x80)()); }
		bool bForceMaxAccel() { mixin(MGBPC!(72, 0x40)()); }
		bool bForceMaxAccel(bool val) { mixin(MSBPC!(72, 0x40)()); }
		bool bPreciseDestination() { mixin(MGBPC!(72, 0x10)()); }
		bool bPreciseDestination(bool val) { mixin(MSBPC!(72, 0x10)()); }
		bool bDoubleJump() { mixin(MGBPC!(72, 0x8)()); }
		bool bDoubleJump(bool val) { mixin(MSBPC!(72, 0x8)()); }
		bool bPressedJump() { mixin(MGBPC!(72, 0x4)()); }
		bool bPressedJump(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool bDuck() { mixin(MGBPC!(72, 0x2)()); }
		bool bDuck(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bRun() { mixin(MGBPC!(72, 0x1)()); }
		bool bRun(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
final:
	static Actor.EDoubleClickDir SetFlags(ubyte Flags, PlayerController PC)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Flags;
		*cast(PlayerController*)&params[4] = PC;
		StaticClass.ProcessEvent(Functions.SetFlags, params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[8];
	}
	ubyte CompressedFlags()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CompressedFlags, params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsImportantMove(Vector CompareAccel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = CompareAccel;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsImportantMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CanCombineWith(SavedMove NewMove, Pawn inPawn, float MaxDelta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Pawn*)&params[4] = inPawn;
		*cast(float*)&params[8] = MaxDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCombineWith, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	Vector GetStartLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStartLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Clear, cast(void*)0, cast(void*)0);
	}
	void PostUpdate(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostUpdate, params.ptr, cast(void*)0);
	}
	void SetInitialPosition(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialPosition, params.ptr, cast(void*)0);
	}
	void SetMoveFor(PlayerController P, float DeltaTime, Vector newAccel, Actor.EDoubleClickDir InDoubleClick)
	{
		ubyte params[21];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[20] = InDoubleClick;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMoveFor, params.ptr, cast(void*)0);
	}
	void PrepMoveFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrepMoveFor, params.ptr, cast(void*)0);
	}
	void ResetMoveFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetMoveFor, params.ptr, cast(void*)0);
	}
	ScriptString GetDebugString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
