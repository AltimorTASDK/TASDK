module UnrealScript.Engine.AnimNodeBlendMultiBone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendMultiBone : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendMultiBone")()); }
	private static __gshared AnimNodeBlendMultiBone mDefaultProperties;
	@property final static AnimNodeBlendMultiBone DefaultProperties() { mixin(MGDPC!(AnimNodeBlendMultiBone, "AnimNodeBlendMultiBone Engine.Default__AnimNodeBlendMultiBone")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetTargetStartBone;
		public @property static final ScriptFunction SetTargetStartBone() { mixin(MGF!("mSetTargetStartBone", "Function Engine.AnimNodeBlendMultiBone.SetTargetStartBone")()); }
	}
	struct ChildBoneBlendInfo
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeBlendMultiBone.ChildBoneBlendInfo")()); }
		@property final auto ref
		{
			ScriptArray!(float) TargetPerBoneWeight() { mixin(MGPS!("ScriptArray!(float)", 0)()); }
			ScriptArray!(ubyte) TargetRequiredBones() { mixin(MGPS!("ScriptArray!(ubyte)", 36)()); }
			float OldBoneIncrease() { mixin(MGPS!("float", 32)()); }
			ScriptName OldStartBone() { mixin(MGPS!("ScriptName", 24)()); }
			float InitPerBoneIncrease() { mixin(MGPS!("float", 20)()); }
			ScriptName InitTargetStartBone() { mixin(MGPS!("ScriptName", 12)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo) BlendTargetList() { mixin(MGPC!("ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo)", 244)()); }
		ScriptArray!(ubyte) SourceRequiredBones() { mixin(MGPC!("ScriptArray!(ubyte)", 256)()); }
	}
	final void SetTargetStartBone(int TargetIdx, ScriptName StartBoneName, float* PerBoneIncrease = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TargetIdx;
		*cast(ScriptName*)&params[4] = StartBoneName;
		if (PerBoneIncrease !is null)
			*cast(float*)&params[12] = *PerBoneIncrease;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTargetStartBone, params.ptr, cast(void*)0);
	}
}
