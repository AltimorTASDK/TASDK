module UnrealScript.Engine.MorphNodePose;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodePose : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodePose")()); }
	private static __gshared MorphNodePose mDefaultProperties;
	@property final static MorphNodePose DefaultProperties() { mixin(MGDPC!(MorphNodePose, "MorphNodePose Engine.Default__MorphNodePose")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetMorphTarget;
		public @property static final ScriptFunction SetMorphTarget() { mixin(MGF!("mSetMorphTarget", "Function Engine.MorphNodePose.SetMorphTarget")()); }
	}
	@property final auto ref
	{
		float Weight() { mixin(MGPC!("float", 120)()); }
		ScriptName MorphName() { mixin(MGPC!("ScriptName", 112)()); }
		MorphTarget Target() { mixin(MGPC!("MorphTarget", 108)()); }
	}
	final void SetMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMorphTarget, params.ptr, cast(void*)0);
	}
}
