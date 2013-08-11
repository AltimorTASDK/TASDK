module UnrealScript.Engine.PostProcessChain;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessChain : UObject
{
public extern(D):
	@property final auto ref ScriptArray!(PostProcessEffect) Effects() { return *cast(ScriptArray!(PostProcessEffect)*)(cast(size_t)cast(void*)this + 60); }
	final PostProcessEffect FindPostProcessEffect(ScriptName EffectName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EffectName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24747], params.ptr, cast(void*)0);
		return *cast(PostProcessEffect*)&params[8];
	}
}
