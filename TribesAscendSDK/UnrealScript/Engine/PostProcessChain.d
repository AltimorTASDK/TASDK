module UnrealScript.Engine.PostProcessChain;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessChain : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PostProcessChain")); }
	private static __gshared PostProcessChain mDefaultProperties;
	@property final static PostProcessChain DefaultProperties() { mixin(MGDPC("PostProcessChain", "PostProcessChain Engine.Default__PostProcessChain")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindPostProcessEffect;
		public @property static final ScriptFunction FindPostProcessEffect() { mixin(MGF("mFindPostProcessEffect", "Function Engine.PostProcessChain.FindPostProcessEffect")); }
	}
	@property final auto ref ScriptArray!(PostProcessEffect) Effects() { mixin(MGPC("ScriptArray!(PostProcessEffect)", 60)); }
	final PostProcessEffect FindPostProcessEffect(ScriptName EffectName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EffectName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPostProcessEffect, params.ptr, cast(void*)0);
		return *cast(PostProcessEffect*)&params[8];
	}
}
