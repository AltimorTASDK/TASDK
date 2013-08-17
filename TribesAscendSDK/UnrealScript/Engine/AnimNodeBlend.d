module UnrealScript.Engine.AnimNodeBlend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlend : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeBlend")); }
	private static __gshared AnimNodeBlend mDefaultProperties;
	@property final static AnimNodeBlend DefaultProperties() { mixin(MGDPC("AnimNodeBlend", "AnimNodeBlend Engine.Default__AnimNodeBlend")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBlendTarget;
		public @property static final ScriptFunction SetBlendTarget() { mixin(MGF("mSetBlendTarget", "Function Engine.AnimNodeBlend.SetBlendTarget")); }
	}
	@property final
	{
		auto ref
		{
			float BlendTimeToGo() { mixin(MGPC("float", 252)); }
			float Child2WeightTarget() { mixin(MGPC("float", 248)); }
			float Child2Weight() { mixin(MGPC("float", 244)); }
		}
		bool bSkipBlendWhenNotRendered() { mixin(MGBPC(256, 0x1)); }
		bool bSkipBlendWhenNotRendered(bool val) { mixin(MSBPC(256, 0x1)); }
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
