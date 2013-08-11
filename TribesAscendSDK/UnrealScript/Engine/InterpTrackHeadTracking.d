module UnrealScript.Engine.InterpTrackHeadTracking;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackHeadTracking : InterpTrack
{
	enum EHeadTrackingAction : ubyte
	{
		EHTA_DisableHeadTracking = 0,
		EHTA_EnableHeadTracking = 1,
		EHTA_MAX = 2,
	}
	struct HeadTrackingKey
	{
		public @property final auto ref InterpTrackHeadTracking.EHeadTrackingAction Action() { return *cast(InterpTrackHeadTracking.EHeadTrackingAction*)(cast(size_t)&this + 4); }
		private ubyte __Action[1];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey) HeadTrackingTrack() { return *cast(ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptArray!(ScriptName) TrackControllerName() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptArray!(ScriptClass) ActorClassesToLookAt() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptArray!(ScriptName) TargetBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float MaxInterestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float MinLookAtTime() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float MaxLookAtTime() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final bool bLookAtPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
	public @property final bool bLookAtPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
	public @property final bool bDisableBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
	public @property final bool bDisableBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	public @property final auto ref float LookAtActorRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
}
