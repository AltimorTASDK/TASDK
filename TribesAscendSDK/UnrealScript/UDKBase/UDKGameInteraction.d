module UnrealScript.UDKBase.UDKGameInteraction;

import ScriptClasses;
import UnrealScript.Engine.UIInteraction;

extern(C++) interface UDKGameInteraction : UIInteraction
{
	public @property final auto ref int BlockUIInputSemaphore() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
	final bool ShouldProcessUIInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34862], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClearUIInputBlocks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34864], cast(void*)0, cast(void*)0);
	}
	final void BlockUIInput(bool bBlock)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bBlock;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34865], params.ptr, cast(void*)0);
	}
	final void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34867], cast(void*)0, cast(void*)0);
	}
}
