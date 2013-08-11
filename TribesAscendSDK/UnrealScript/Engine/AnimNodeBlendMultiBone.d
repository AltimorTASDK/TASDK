module UnrealScript.Engine.AnimNodeBlendMultiBone;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendMultiBone : AnimNodeBlendBase
{
	struct ChildBoneBlendInfo
	{
		public @property final auto ref ScriptArray!(float) TargetPerBoneWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 0); }
		private ubyte __TargetPerBoneWeight[12];
		public @property final auto ref ScriptArray!(ubyte) TargetRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 36); }
		private ubyte __TargetRequiredBones[12];
		public @property final auto ref float OldBoneIncrease() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __OldBoneIncrease[4];
		public @property final auto ref ScriptName OldStartBone() { return *cast(ScriptName*)(cast(size_t)&this + 24); }
		private ubyte __OldStartBone[8];
		public @property final auto ref float InitPerBoneIncrease() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __InitPerBoneIncrease[4];
		public @property final auto ref ScriptName InitTargetStartBone() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		private ubyte __InitTargetStartBone[8];
	}
	public @property final auto ref ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo) BlendTargetList() { return *cast(ScriptArray!(AnimNodeBlendMultiBone.ChildBoneBlendInfo)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(ubyte) SourceRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 256); }
	final void SetTargetStartBone(int TargetIdx, ScriptName StartBoneName, float PerBoneIncrease)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TargetIdx;
		*cast(ScriptName*)&params[4] = StartBoneName;
		*cast(float*)&params[12] = PerBoneIncrease;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10875], params.ptr, cast(void*)0);
	}
}
