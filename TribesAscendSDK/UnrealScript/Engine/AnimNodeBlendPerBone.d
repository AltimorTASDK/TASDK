module UnrealScript.Engine.AnimNodeBlendPerBone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeBlendPerBone : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeBlendPerBone")); }
	private static __gshared AnimNodeBlendPerBone mDefaultProperties;
	@property final static AnimNodeBlendPerBone DefaultProperties() { mixin(MGDPC("AnimNodeBlendPerBone", "AnimNodeBlendPerBone Engine.Default__AnimNodeBlendPerBone")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBlendTarget;
		public @property static final ScriptFunction SetBlendTarget() { mixin(MGF("mSetBlendTarget", "Function Engine.AnimNodeBlendPerBone.SetBlendTarget")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) BranchStartBoneName() { mixin(MGPC("ScriptArray!(ScriptName)", 264)); }
			ScriptArray!(float) Child2PerBoneWeight() { mixin(MGPC("ScriptArray!(float)", 276)); }
			ScriptArray!(ubyte) LocalToCompReqBones() { mixin(MGPC("ScriptArray!(ubyte)", 288)); }
		}
		bool bForceLocalSpaceBlend() { mixin(MGBPC(260, 0x1)); }
		bool bForceLocalSpaceBlend(bool val) { mixin(MSBPC(260, 0x1)); }
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
