module UnrealScript.Engine.SkelControl_CCD_IK;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_CCD_IK : SkelControlBase
{
	public @property final auto ref ScriptArray!(float) AngleConstraint() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float MaxAngleSteps() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final bool bNoTurnOptimization() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x2) != 0; }
	public @property final bool bNoTurnOptimization(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x2; } return val; }
	public @property final bool bStartFromTail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
	public @property final bool bStartFromTail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	public @property final auto ref float Precision() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int IterationsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref int MaxPerBoneIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref int NumBones() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref Vector EffectorTranslationFromBone() { return *cast(Vector*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptName EffectorSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref SkelControlBase.EBoneControlSpace EffectorLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref Vector EffectorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
}
