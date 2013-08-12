module UnrealScript.TribesGame.TrSkelControlFootPlacement_CCD;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControl_CCD_IK;

extern(C++) interface TrSkelControlFootPlacement_CCD : SkelControl_CCD_IK
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkelControlFootPlacement_CCD")); }
	private static __gshared TrSkelControlFootPlacement_CCD mDefaultProperties;
	@property final static TrSkelControlFootPlacement_CCD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkelControlFootPlacement_CCD)("TrSkelControlFootPlacement_CCD TribesGame.Default__TrSkelControlFootPlacement_CCD")); }
	@property final
	{
		auto ref
		{
			float FootAdjustHeightLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float OffContactFootAdjustInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float OnContactFootAdjustInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			Vector FootUpDirLastTick() { return *cast(Vector*)(cast(size_t)cast(void*)this + 300); }
			float FootOrientInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			float MaxFootOrientAdjust() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float MaxDownAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float MaxUpAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			Rotator FootRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 268); }
			UObject.EAxis FootUpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 264); }
			float FootOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		}
		bool bFootOnGroundLastTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x8) != 0; }
		bool bFootOnGroundLastTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x8; } return val; }
		bool bOnlyEnableForUpAdjustment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
		bool bOnlyEnableForUpAdjustment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
		bool bOrientFootToGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
		bool bOrientFootToGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
		bool bInvertFootUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
		bool bInvertFootUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	}
}
