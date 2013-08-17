module UnrealScript.Engine.MorphNodeMultiPose;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeMultiPose : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodeMultiPose")()); }
	private static __gshared MorphNodeMultiPose mDefaultProperties;
	@property final static MorphNodeMultiPose DefaultProperties() { mixin(MGDPC!(MorphNodeMultiPose, "MorphNodeMultiPose Engine.Default__MorphNodeMultiPose")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddMorphTarget;
			ScriptFunction mRemoveMorphTarget;
			ScriptFunction mUpdateMorphTarget;
		}
		public @property static final
		{
			ScriptFunction AddMorphTarget() { mixin(MGF!("mAddMorphTarget", "Function Engine.MorphNodeMultiPose.AddMorphTarget")()); }
			ScriptFunction RemoveMorphTarget() { mixin(MGF!("mRemoveMorphTarget", "Function Engine.MorphNodeMultiPose.RemoveMorphTarget")()); }
			ScriptFunction UpdateMorphTarget() { mixin(MGF!("mUpdateMorphTarget", "Function Engine.MorphNodeMultiPose.UpdateMorphTarget")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MorphTarget) Targets() { mixin(MGPC!("ScriptArray!(MorphTarget)", 108)()); }
		ScriptArray!(ScriptName) MorphNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 120)()); }
		ScriptArray!(float) Weights() { mixin(MGPC!("ScriptArray!(float)", 132)()); }
	}
final:
	bool AddMorphTarget(ScriptName MorphTargetName, float* InWeight = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		if (InWeight !is null)
			*cast(float*)&params[8] = *InWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMorphTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void RemoveMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMorphTarget, params.ptr, cast(void*)0);
	}
	bool UpdateMorphTarget(MorphTarget Target, float InWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MorphTarget*)params.ptr = Target;
		*cast(float*)&params[4] = InWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMorphTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
