module UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeJumpLeanOffset : AnimNodeAimOffset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimNodeJumpLeanOffset")); }
	private static __gshared UDKAnimNodeJumpLeanOffset mDefaultProperties;
	@property final static UDKAnimNodeJumpLeanOffset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimNodeJumpLeanOffset)("UDKAnimNodeJumpLeanOffset UDKBase.Default__UDKAnimNodeJumpLeanOffset")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetLeanWeight;
		public @property static final ScriptFunction SetLeanWeight() { return mSetLeanWeight ? mSetLeanWeight : (mSetLeanWeight = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeJumpLeanOffset.SetLeanWeight")); }
	}
	@property final
	{
		auto ref
		{
			float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
			float LeanWeightTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
			float LeanWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
			UObject.Vector2D PreBlendAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 340); }
			ScriptName OldAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 332); }
			AnimNodeAimOffset CachedAimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 328); }
			float MaxLeanChangeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float JumpLeanStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
		}
		bool bOldDoubleJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x10) != 0; }
		bool bOldDoubleJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x10; } return val; }
		bool bDoubleJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x8) != 0; }
		bool bDoubleJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x8; } return val; }
		bool bOldDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x4) != 0; }
		bool bOldDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x4; } return val; }
		bool bDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x2) != 0; }
		bool bDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x2; } return val; }
		bool bMultiplyByZVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x1) != 0; }
		bool bMultiplyByZVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x1; } return val; }
	}
	final void SetLeanWeight(float WeightTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = WeightTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLeanWeight, params.ptr, cast(void*)0);
	}
}
