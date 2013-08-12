module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveLinearKeys : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_RemoveLinearKeys")); }
	private static __gshared AnimationCompressionAlgorithm_RemoveLinearKeys mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RemoveLinearKeys DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimationCompressionAlgorithm_RemoveLinearKeys)("AnimationCompressionAlgorithm_RemoveLinearKeys Engine.Default__AnimationCompressionAlgorithm_RemoveLinearKeys")); }
	@property final
	{
		auto ref
		{
			float ParentKeyScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float EffectorDiffSocket() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float MinEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float MaxEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bActuallyFilterLinearKeys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bActuallyFilterLinearKeys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bRetarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bRetarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
