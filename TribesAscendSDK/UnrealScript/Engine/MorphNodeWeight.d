module UnrealScript.Engine.MorphNodeWeight;

import ScriptClasses;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeight : MorphNodeWeightBase
{
public extern(D):
	@property final auto ref float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	final void SetNodeWeight(float NewWeight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20620], params.ptr, cast(void*)0);
	}
}
