module UnrealScript.Engine.SeqAct_Latent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Latent : SequenceAction
{
	public @property final auto ref ScriptArray!(Actor) LatentActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bAborted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bAborted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	final void AbortFor(Actor latentActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = latentActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25540], params.ptr, cast(void*)0);
	}
	final bool Update(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25542], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
