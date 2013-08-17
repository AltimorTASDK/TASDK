module UnrealScript.UDKBase.UDKAnimBlendByFall;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByFall : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByFall")); }
	private static __gshared UDKAnimBlendByFall mDefaultProperties;
	@property final static UDKAnimBlendByFall DefaultProperties() { mixin(MGDPC("UDKAnimBlendByFall", "UDKAnimBlendByFall UDKBase.Default__UDKAnimBlendByFall")); }
	enum EBlendFallTypes : ubyte
	{
		FBT_Up = 0,
		FBT_Down = 1,
		FBT_PreLand = 2,
		FBT_Land = 3,
		FBT_DblJumpUp = 4,
		FBT_DblJumpDown = 5,
		FBT_DblJumpPreLand = 6,
		FBT_DblJumpLand = 7,
		FBT_None = 8,
		FBT_MAX = 9,
	}
	@property final
	{
		auto ref
		{
			UDKAnimNodeJumpLeanOffset CachedLeanNode() { mixin(MGPC("UDKAnimNodeJumpLeanOffset", 320)); }
			float LastFallingVelocity() { mixin(MGPC("float", 316)); }
			UDKAnimBlendByFall.EBlendFallTypes FallState() { mixin(MGPC("UDKAnimBlendByFall.EBlendFallTypes", 312)); }
			float ToDblJumpUprightTime() { mixin(MGPC("float", 308)); }
			float PreLandStartUprightTime() { mixin(MGPC("float", 304)); }
			float PreLandTime() { mixin(MGPC("float", 300)); }
		}
		bool bDodgeFall() { mixin(MGBPC(296, 0x4)); }
		bool bDodgeFall(bool val) { mixin(MSBPC(296, 0x4)); }
		bool bDidDoubleJump() { mixin(MGBPC(296, 0x2)); }
		bool bDidDoubleJump(bool val) { mixin(MSBPC(296, 0x2)); }
		bool bIgnoreDoubleJumps() { mixin(MGBPC(296, 0x1)); }
		bool bIgnoreDoubleJumps(bool val) { mixin(MSBPC(296, 0x1)); }
	}
}
