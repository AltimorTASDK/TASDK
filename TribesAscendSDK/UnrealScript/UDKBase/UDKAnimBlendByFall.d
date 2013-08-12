module UnrealScript.UDKBase.UDKAnimBlendByFall;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByFall : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByFall")); }
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
			UDKAnimNodeJumpLeanOffset CachedLeanNode() { return *cast(UDKAnimNodeJumpLeanOffset*)(cast(size_t)cast(void*)this + 320); }
			float LastFallingVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			UDKAnimBlendByFall.EBlendFallTypes FallState() { return *cast(UDKAnimBlendByFall.EBlendFallTypes*)(cast(size_t)cast(void*)this + 312); }
			float ToDblJumpUprightTime() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			float PreLandStartUprightTime() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float PreLandTime() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		}
		bool bDodgeFall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x4) != 0; }
		bool bDodgeFall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x4; } return val; }
		bool bDidDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x2) != 0; }
		bool bDidDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x2; } return val; }
		bool bIgnoreDoubleJumps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
		bool bIgnoreDoubleJumps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	}
}
