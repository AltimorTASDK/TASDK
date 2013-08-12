module UnrealScript.Engine.AnimNodeBlendPerBone;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeBlendPerBone : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendPerBone")); }
	private static __gshared AnimNodeBlendPerBone mDefaultProperties;
	@property final static AnimNodeBlendPerBone DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendPerBone)("AnimNodeBlendPerBone Engine.Default__AnimNodeBlendPerBone")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBlendTarget;
		public @property static final ScriptFunction SetBlendTarget() { return mSetBlendTarget ? mSetBlendTarget : (mSetBlendTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeBlendPerBone.SetBlendTarget")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) BranchStartBoneName() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 264); }
			ScriptArray!(float) Child2PerBoneWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 276); }
			ScriptArray!(ubyte) LocalToCompReqBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 288); }
		}
		bool bForceLocalSpaceBlend() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bForceLocalSpaceBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
	final void SetBlendTarget(float BlendTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BlendTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlendTarget, params.ptr, cast(void*)0);
	}
}
