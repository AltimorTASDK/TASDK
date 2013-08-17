module UnrealScript.Engine.MorphTargetSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MorphTargetSet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphTargetSet")()); }
	private static __gshared MorphTargetSet mDefaultProperties;
	@property final static MorphTargetSet DefaultProperties() { mixin(MGDPC!(MorphTargetSet, "MorphTargetSet Engine.Default__MorphTargetSet")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindMorphTarget;
		public @property static final ScriptFunction FindMorphTarget() { mixin(MGF!("mFindMorphTarget", "Function Engine.MorphTargetSet.FindMorphTarget")()); }
	}
	@property final auto ref
	{
		ScriptArray!(MorphTarget) Targets() { mixin(MGPC!("ScriptArray!(MorphTarget)", 60)()); }
		UObject.Array_Mirror RawWedgePointIndices() { mixin(MGPC!("UObject.Array_Mirror", 76)()); }
		SkeletalMesh BaseSkelMesh() { mixin(MGPC!("SkeletalMesh", 72)()); }
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
