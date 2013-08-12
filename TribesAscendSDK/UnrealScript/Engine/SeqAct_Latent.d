module UnrealScript.Engine.SeqAct_Latent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Latent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Latent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAbortFor;
			ScriptFunction mUpdate;
		}
		public @property static final
		{
			ScriptFunction AbortFor() { return mAbortFor ? mAbortFor : (mAbortFor = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Latent.AbortFor")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Latent.Update")); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(Actor) LatentActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 232); }
		bool bAborted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bAborted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
final:
	void AbortFor(Actor latentActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = latentActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbortFor, params.ptr, cast(void*)0);
	}
	bool Update(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
