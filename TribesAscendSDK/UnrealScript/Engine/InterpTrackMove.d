module UnrealScript.Engine.InterpTrackMove;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackMove : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackMove")); }
	enum EInterpTrackMoveRotMode : ubyte
	{
		IMR_Keyframed = 0,
		IMR_LookAtGroup = 1,
		IMR_Ignore = 2,
		IMR_MAX = 3,
	}
	enum EInterpTrackMoveFrame : ubyte
	{
		IMF_World = 0,
		IMF_RelativeToInitial = 1,
		IMF_MAX = 2,
	}
	struct InterpLookupTrack
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackMove.InterpLookupTrack")); }
		@property final auto ref ScriptArray!(InterpTrackMove.InterpLookupPoint) Points() { return *cast(ScriptArray!(InterpTrackMove.InterpLookupPoint)*)(cast(size_t)&this + 0); }
	}
	struct InterpLookupPoint
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackMove.InterpLookupPoint")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			InterpTrackMove.EInterpTrackMoveRotMode RotMode() { return *cast(InterpTrackMove.EInterpTrackMoveRotMode*)(cast(size_t)cast(void*)this + 193); }
			InterpTrackMove.EInterpTrackMoveFrame MoveFrame() { return *cast(InterpTrackMove.EInterpTrackMoveFrame*)(cast(size_t)cast(void*)this + 192); }
			float AngCurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float LinCurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			ScriptName LookAtGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 172); }
			InterpTrackMove.InterpLookupTrack LookupTrack() { return *cast(InterpTrackMove.InterpLookupTrack*)(cast(size_t)cast(void*)this + 160); }
			UObject.InterpCurveVector EulerTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 144); }
			UObject.InterpCurveVector PosTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 128); }
		}
		bool bHide3DTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x20) != 0; }
		bool bHide3DTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x20; } return val; }
		bool bShowRotationOnCurveEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x10) != 0; }
		bool bShowRotationOnCurveEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x10; } return val; }
		bool bShowTranslationOnCurveEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
		bool bShowTranslationOnCurveEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
		bool bDisableMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
		bool bDisableMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
		bool bShowArrowAtKeys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
		bool bShowArrowAtKeys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
		bool bUseQuatInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bUseQuatInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
}
