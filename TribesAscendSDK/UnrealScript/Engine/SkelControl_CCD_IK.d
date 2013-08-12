module UnrealScript.Engine.SkelControl_CCD_IK;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_CCD_IK : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControl_CCD_IK")); }
	private static __gshared SkelControl_CCD_IK mDefaultProperties;
	@property final static SkelControl_CCD_IK DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControl_CCD_IK)("SkelControl_CCD_IK Engine.Default__SkelControl_CCD_IK")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) AngleConstraint() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 244); }
			float MaxAngleSteps() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float Precision() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			int IterationsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
			int MaxPerBoneIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
			int NumBones() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
			Vector EffectorTranslationFromBone() { return *cast(Vector*)(cast(size_t)cast(void*)this + 212); }
			ScriptName EffectorSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
			SkelControlBase.EBoneControlSpace EffectorLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
			Vector EffectorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
		}
		bool bNoTurnOptimization() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x2) != 0; }
		bool bNoTurnOptimization(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x2; } return val; }
		bool bStartFromTail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
		bool bStartFromTail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	}
}
