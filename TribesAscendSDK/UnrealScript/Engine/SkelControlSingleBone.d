module UnrealScript.Engine.SkelControlSingleBone;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSingleBone : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlSingleBone")); }
	@property final
	{
		auto ref
		{
			ScriptName RotationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 228); }
			Rotator BoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 216); }
			ScriptName TranslationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 208); }
			SkelControlBase.EBoneControlSpace BoneRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 205); }
			SkelControlBase.EBoneControlSpace BoneTranslationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 204); }
			Vector BoneTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bRemoveMeshRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x10) != 0; }
		bool bRemoveMeshRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x10; } return val; }
		bool bAddRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
		bool bAddRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
		bool bAddTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
		bool bAddTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
		bool bApplyRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
		bool bApplyRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
		bool bApplyTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bApplyTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
}
