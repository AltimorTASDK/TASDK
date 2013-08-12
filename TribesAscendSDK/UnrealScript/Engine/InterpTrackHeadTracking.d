module UnrealScript.Engine.InterpTrackHeadTracking;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackHeadTracking : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackHeadTracking")); }
	enum EHeadTrackingAction : ubyte
	{
		EHTA_DisableHeadTracking = 0,
		EHTA_EnableHeadTracking = 1,
		EHTA_MAX = 2,
	}
	struct HeadTrackingKey
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackHeadTracking.HeadTrackingKey")); }
		@property final auto ref
		{
			InterpTrackHeadTracking.EHeadTrackingAction Action() { return *cast(InterpTrackHeadTracking.EHeadTrackingAction*)(cast(size_t)&this + 4); }
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey) HeadTrackingTrack() { return *cast(ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey)*)(cast(size_t)cast(void*)this + 128); }
			ScriptArray!(ScriptName) TrackControllerName() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 140); }
			ScriptArray!(ScriptClass) ActorClassesToLookAt() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 172); }
			ScriptArray!(ScriptName) TargetBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 184); }
			float MaxInterestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float MinLookAtTime() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float MaxLookAtTime() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float LookAtActorRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
		}
		bool bLookAtPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
		bool bLookAtPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
		bool bDisableBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
		bool bDisableBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	}
}
