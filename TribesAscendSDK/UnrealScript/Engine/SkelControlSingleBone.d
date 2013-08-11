module UnrealScript.Engine.SkelControlSingleBone;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSingleBone : SkelControlBase
{
	public @property final auto ref ScriptName RotationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref Rotator BoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptName TranslationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref SkelControlBase.EBoneControlSpace BoneRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 205); }
	public @property final auto ref SkelControlBase.EBoneControlSpace BoneTranslationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref Vector BoneTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bRemoveMeshRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x10) != 0; }
	public @property final bool bRemoveMeshRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x10; } return val; }
	public @property final bool bAddRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
	public @property final bool bAddRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
	public @property final bool bAddTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
	public @property final bool bAddTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
	public @property final bool bApplyRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
	public @property final bool bApplyRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
	public @property final bool bApplyTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
	public @property final bool bApplyTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
}
