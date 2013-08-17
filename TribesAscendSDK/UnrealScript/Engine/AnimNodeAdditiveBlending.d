module UnrealScript.Engine.AnimNodeAdditiveBlending;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeAdditiveBlending : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeAdditiveBlending")); }
	private static __gshared AnimNodeAdditiveBlending mDefaultProperties;
	@property final static AnimNodeAdditiveBlending DefaultProperties() { mixin(MGDPC("AnimNodeAdditiveBlending", "AnimNodeAdditiveBlending Engine.Default__AnimNodeAdditiveBlending")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBlendTarget;
		public @property static final ScriptFunction SetBlendTarget() { mixin(MGF("mSetBlendTarget", "Function Engine.AnimNodeAdditiveBlending.SetBlendTarget")); }
	}
	@property final
	{
		bool bPassThroughWhenNotRendered() { mixin(MGBPC(260, 0x1)); }
		bool bPassThroughWhenNotRendered(bool val) { mixin(MSBPC(260, 0x1)); }
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
