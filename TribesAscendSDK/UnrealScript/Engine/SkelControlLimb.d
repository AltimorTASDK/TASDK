module UnrealScript.Engine.SkelControlLimb;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLimb : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlLimb")); }
	@property final
	{
		auto ref
		{
			ScriptName StretchRollBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
			UObject.Vector2D StretchLimits() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 236); }
			ScriptName JointTargetSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 224); }
			Vector JointTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 212); }
			ScriptName EffectorSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
			UObject.EAxis JointAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 203); }
			UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 202); }
			SkelControlBase.EBoneControlSpace JointTargetLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 201); }
			SkelControlBase.EBoneControlSpace EffectorLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
			Vector EffectorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
		}
		bool bAllowStretching() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
		bool bAllowStretching(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
		bool bTakeRotationFromEffectorSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
		bool bTakeRotationFromEffectorSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
		bool bMaintainEffectorRelRot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
		bool bMaintainEffectorRelRot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
		bool bRotateJoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
		bool bRotateJoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
		bool bInvertJointAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bInvertJointAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bInvertBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bInvertBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
