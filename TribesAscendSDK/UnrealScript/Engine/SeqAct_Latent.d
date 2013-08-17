module UnrealScript.Engine.SeqAct_Latent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Latent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_Latent")); }
	private static __gshared SeqAct_Latent mDefaultProperties;
	@property final static SeqAct_Latent DefaultProperties() { mixin(MGDPC("SeqAct_Latent", "SeqAct_Latent Engine.Default__SeqAct_Latent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAbortFor;
			ScriptFunction mUpdate;
		}
		public @property static final
		{
			ScriptFunction AbortFor() { mixin(MGF("mAbortFor", "Function Engine.SeqAct_Latent.AbortFor")); }
			ScriptFunction Update() { mixin(MGF("mUpdate", "Function Engine.SeqAct_Latent.Update")); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(Actor) LatentActors() { mixin(MGPC("ScriptArray!(Actor)", 232)); }
		bool bAborted() { mixin(MGBPC(244, 0x1)); }
		bool bAborted(bool val) { mixin(MSBPC(244, 0x1)); }
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
