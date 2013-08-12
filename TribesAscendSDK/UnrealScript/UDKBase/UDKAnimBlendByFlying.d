module UnrealScript.UDKBase.UDKAnimBlendByFlying;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByFlying : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByFlying")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mUpdateFlyingState;
		public @property static final ScriptFunction UpdateFlyingState() { return mUpdateFlyingState ? mUpdateFlyingState : (mUpdateFlyingState = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimBlendByFlying.UpdateFlyingState")); }
	}
	enum EFlyingState : ubyte
	{
		Flying_NotFlying = 0,
		Flying_OpeningWings = 1,
		Flying_Flying = 2,
		Flying_ClosingWings = 3,
		Flying_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			ScriptName EndingAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 324); }
			ScriptName StartingAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 312); }
			AnimNodeAimOffset FlyingDir() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 308); }
			UDKAnimBlendBase FlyingMode() { return *cast(UDKAnimBlendBase*)(cast(size_t)cast(void*)this + 304); }
			// WARNING: Property 'Pawn' has the same name as a defined type!
			UDKAnimBlendByFlying.EFlyingState FlyingState() { return *cast(UDKAnimBlendByFlying.EFlyingState*)(cast(size_t)cast(void*)this + 296); }
		}
		bool bHasEndingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
		bool bHasEndingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
		bool bHasStartingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
		bool bHasStartingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
	}
	final void UpdateFlyingState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFlyingState, cast(void*)0, cast(void*)0);
	}
}
