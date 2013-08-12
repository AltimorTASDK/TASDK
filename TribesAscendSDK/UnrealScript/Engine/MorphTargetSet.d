module UnrealScript.Engine.MorphTargetSet;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MorphTargetSet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphTargetSet")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindMorphTarget;
		public @property static final ScriptFunction FindMorphTarget() { return mFindMorphTarget ? mFindMorphTarget : (mFindMorphTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphTargetSet.FindMorphTarget")); }
	}
	@property final auto ref
	{
		ScriptArray!(MorphTarget) Targets() { return *cast(ScriptArray!(MorphTarget)*)(cast(size_t)cast(void*)this + 60); }
		UObject.Array_Mirror RawWedgePointIndices() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 76); }
		SkeletalMesh BaseSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
	}
	final MorphTarget FindMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMorphTarget, params.ptr, cast(void*)0);
		return *cast(MorphTarget*)&params[8];
	}
}
