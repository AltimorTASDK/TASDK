module UnrealScript.Engine.SkelControlLimb;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLimb : SkelControlBase
{
	public @property final auto ref ScriptName StretchRollBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref UObject.Vector2D StretchLimits() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bAllowStretching() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
	public @property final bool bAllowStretching(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
	public @property final bool bTakeRotationFromEffectorSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
	public @property final bool bTakeRotationFromEffectorSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
	public @property final bool bMaintainEffectorRelRot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bMaintainEffectorRelRot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final bool bRotateJoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bRotateJoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bInvertJointAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bInvertJointAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bInvertBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bInvertBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final auto ref ScriptName JointTargetSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref Vector JointTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptName EffectorSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref UObject.EAxis JointAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 203); }
	public @property final auto ref UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 202); }
	public @property final auto ref SkelControlBase.EBoneControlSpace JointTargetLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 201); }
	public @property final auto ref SkelControlBase.EBoneControlSpace EffectorLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref Vector EffectorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
}
