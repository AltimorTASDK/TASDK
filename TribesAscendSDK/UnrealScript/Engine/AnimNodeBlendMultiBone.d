module UnrealScript.Engine.AnimNodeBlendMultiBone;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendMultiBone : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendMultiBone")); }
	private static __gshared AnimNodeBlendMultiBone mDefaultProperties;
	@property final static AnimNodeBlendMultiBone DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendMultiBone)("AnimNodeBlendMultiBone Engine.Default__AnimNodeBlendMultiBone")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetTargetStartBone;
		public @property static final ScriptFunction SetTargetStartBone() { return mSetTargetStartBone ? mSetTargetStartBone : (mSetTargetStartBone = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeBlendMultiBone.SetTargetStartBone")); }
	}
	struct ChildBoneBlendInfo
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeBlendMultiBone.ChildBoneBlendInfo")); }
		@property final auto ref
		{
			ScriptArray!(float) TargetPerBoneWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 0); }
			ScriptArray!(ubyte) TargetRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 36); }
			float OldBoneIncrease() { return *cast(float*)(cast(size_t)&this + 32); }
			ScriptName OldStartBone() { return *cast(ScriptName*)(cast(size_t)&this + 24); }
			float InitPerBoneIncrease() { return *cast(float*)(cast(size_t)&this + 20); }
			ScriptName InitTargetStartBone() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo) BlendTargetList() { return *cast(ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo)*)(cast(size_t)cast(void*)this + 244); }
		ScriptArray!(ubyte) SourceRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 256); }
	}
	final void SetTargetStartBone(int TargetIdx, ScriptName StartBoneName, float PerBoneIncrease)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TargetIdx;
		*cast(ScriptName*)&params[4] = StartBoneName;
		*cast(float*)&params[12] = PerBoneIncrease;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTargetStartBone, params.ptr, cast(void*)0);
	}
}
