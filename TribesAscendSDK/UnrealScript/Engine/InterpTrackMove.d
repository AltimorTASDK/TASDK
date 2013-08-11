module UnrealScript.Engine.InterpTrackMove;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackMove : InterpTrack
{
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
		public @property final auto ref ScriptArray!(InterpTrackMove.InterpLookupPoint) Points() { return *cast(ScriptArray!(InterpTrackMove.InterpLookupPoint)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
	}
	struct InterpLookupPoint
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Time[4];
		public @property final auto ref ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __GroupName[8];
	}
	public @property final auto ref InterpTrackMove.EInterpTrackMoveRotMode RotMode() { return *cast(InterpTrackMove.EInterpTrackMoveRotMode*)(cast(size_t)cast(void*)this + 193); }
	public @property final auto ref InterpTrackMove.EInterpTrackMoveFrame MoveFrame() { return *cast(InterpTrackMove.EInterpTrackMoveFrame*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bHide3DTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x20) != 0; }
	public @property final bool bHide3DTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x20; } return val; }
	public @property final bool bShowRotationOnCurveEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x10) != 0; }
	public @property final bool bShowRotationOnCurveEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x10; } return val; }
	public @property final bool bShowTranslationOnCurveEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
	public @property final bool bShowTranslationOnCurveEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
	public @property final bool bDisableMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
	public @property final bool bDisableMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
	public @property final bool bShowArrowAtKeys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
	public @property final bool bShowArrowAtKeys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
	public @property final bool bUseQuatInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
	public @property final bool bUseQuatInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	public @property final auto ref float AngCurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float LinCurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptName LookAtGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref InterpTrackMove.InterpLookupTrack LookupTrack() { return *cast(InterpTrackMove.InterpLookupTrack*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.InterpCurveVector EulerTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UObject.InterpCurveVector PosTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 128); }
}
