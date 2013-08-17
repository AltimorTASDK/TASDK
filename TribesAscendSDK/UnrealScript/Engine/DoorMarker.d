module UnrealScript.Engine.DoorMarker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpActor;

extern(C++) interface DoorMarker : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DoorMarker")()); }
	private static __gshared DoorMarker mDefaultProperties;
	@property final static DoorMarker DefaultProperties() { mixin(MGDPC!(DoorMarker, "DoorMarker Engine.Default__DoorMarker")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mMoverOpened;
			ScriptFunction mMoverClosed;
			ScriptFunction mSpecialHandling;
			ScriptFunction mProceedWithMove;
			ScriptFunction mSuggestMovePreparation;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DoorMarker.PostBeginPlay")()); }
			ScriptFunction MoverOpened() { mixin(MGF!("mMoverOpened", "Function Engine.DoorMarker.MoverOpened")()); }
			ScriptFunction MoverClosed() { mixin(MGF!("mMoverClosed", "Function Engine.DoorMarker.MoverClosed")()); }
			ScriptFunction SpecialHandling() { mixin(MGF!("mSpecialHandling", "Function Engine.DoorMarker.SpecialHandling")()); }
			ScriptFunction ProceedWithMove() { mixin(MGF!("mProceedWithMove", "Function Engine.DoorMarker.ProceedWithMove")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function Engine.DoorMarker.SuggestMovePreparation")()); }
		}
	}
	enum EDoorType : ubyte
	{
		DOOR_Shoot = 0,
		DOOR_Touch = 1,
		DOOR_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			Actor DoorTrigger() { mixin(MGPC!("Actor", 700)()); }
			DoorMarker.EDoorType DoorType() { mixin(MGPC!("DoorMarker.EDoorType", 696)()); }
			InterpActor MyDoor() { mixin(MGPC!("InterpActor", 692)()); }
		}
		bool bTempDisabledCollision() { mixin(MGBPC!(704, 0x10)()); }
		bool bTempDisabledCollision(bool val) { mixin(MSBPC!(704, 0x10)()); }
		bool bDoorOpen() { mixin(MGBPC!(704, 0x8)()); }
		bool bDoorOpen(bool val) { mixin(MSBPC!(704, 0x8)()); }
		bool bBlockedWhenClosed() { mixin(MGBPC!(704, 0x4)()); }
		bool bBlockedWhenClosed(bool val) { mixin(MSBPC!(704, 0x4)()); }
		bool bInitiallyClosed() { mixin(MGBPC!(704, 0x2)()); }
		bool bInitiallyClosed(bool val) { mixin(MSBPC!(704, 0x2)()); }
		bool bWaitUntilCompletelyOpened() { mixin(MGBPC!(704, 0x1)()); }
		bool bWaitUntilCompletelyOpened(bool val) { mixin(MSBPC!(704, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void MoverOpened()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoverOpened, cast(void*)0, cast(void*)0);
	}
	void MoverClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoverClosed, cast(void*)0, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProceedWithMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
