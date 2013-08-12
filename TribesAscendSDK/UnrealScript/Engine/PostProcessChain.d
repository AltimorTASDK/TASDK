module UnrealScript.Engine.PostProcessChain;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessChain : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PostProcessChain")); }
	private static __gshared PostProcessChain mDefaultProperties;
	@property final static PostProcessChain DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PostProcessChain)("PostProcessChain Engine.Default__PostProcessChain")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindPostProcessEffect;
		public @property static final ScriptFunction FindPostProcessEffect() { return mFindPostProcessEffect ? mFindPostProcessEffect : (mFindPostProcessEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.PostProcessChain.FindPostProcessEffect")); }
	}
	@property final auto ref ScriptArray!(PostProcessEffect) Effects() { return *cast(ScriptArray!(PostProcessEffect)*)(cast(size_t)cast(void*)this + 60); }
	final PostProcessEffect FindPostProcessEffect(ScriptName EffectName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EffectName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPostProcessEffect, params.ptr, cast(void*)0);
		return *cast(PostProcessEffect*)&params[8];
	}
}
