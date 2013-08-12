module UnrealScript.Engine.SkelControlFootPlacement;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLimb;
import UnrealScript.Core.UObject;

extern(C++) interface SkelControlFootPlacement : SkelControlLimb
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlFootPlacement")); }
	private static __gshared SkelControlFootPlacement mDefaultProperties;
	@property final static SkelControlFootPlacement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControlFootPlacement)("SkelControlFootPlacement Engine.Default__SkelControlFootPlacement")); }
	@property final
	{
		auto ref
		{
			float MaxFootOrientAdjust() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float MaxDownAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float MaxUpAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			Rotator FootRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 260); }
			UObject.EAxis FootUpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 256); }
			float FootOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		}
		bool bOnlyEnableForUpAdjustment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x4) != 0; }
		bool bOnlyEnableForUpAdjustment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x4; } return val; }
		bool bOrientFootToGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x2) != 0; }
		bool bOrientFootToGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x2; } return val; }
		bool bInvertFootUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
		bool bInvertFootUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	}
}
