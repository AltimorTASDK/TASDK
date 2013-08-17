module UnrealScript.Engine.InterpTrackHeadTracking;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackHeadTracking : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackHeadTracking")()); }
	private static __gshared InterpTrackHeadTracking mDefaultProperties;
	@property final static InterpTrackHeadTracking DefaultProperties() { mixin(MGDPC!(InterpTrackHeadTracking, "InterpTrackHeadTracking Engine.Default__InterpTrackHeadTracking")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackHeadTracking.HeadTrackingKey")()); }
		@property final auto ref
		{
			InterpTrackHeadTracking.EHeadTrackingAction Action() { mixin(MGPS!(InterpTrackHeadTracking.EHeadTrackingAction, 4)()); }
			float Time() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey) HeadTrackingTrack() { mixin(MGPC!(ScriptArray!(InterpTrackHeadTracking.HeadTrackingKey), 128)()); }
			ScriptArray!(ScriptName) TrackControllerName() { mixin(MGPC!(ScriptArray!(ScriptName), 140)()); }
			ScriptArray!(ScriptClass) ActorClassesToLookAt() { mixin(MGPC!(ScriptArray!(ScriptClass), 172)()); }
			ScriptArray!(ScriptName) TargetBoneNames() { mixin(MGPC!(ScriptArray!(ScriptName), 184)()); }
			float MaxInterestTime() { mixin(MGPC!(float, 168)()); }
			float MinLookAtTime() { mixin(MGPC!(float, 164)()); }
			float MaxLookAtTime() { mixin(MGPC!(float, 160)()); }
			float LookAtActorRadius() { mixin(MGPC!(float, 152)()); }
		}
		bool bLookAtPawns() { mixin(MGBPC!(156, 0x2)()); }
		bool bLookAtPawns(bool val) { mixin(MSBPC!(156, 0x2)()); }
		bool bDisableBeyondLimit() { mixin(MGBPC!(156, 0x1)()); }
		bool bDisableBeyondLimit(bool val) { mixin(MSBPC!(156, 0x1)()); }
	}
}
