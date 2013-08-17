module UnrealScript.UTGame.UTEmit_HitEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTEmit_HitEffect : UTEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTEmit_HitEffect")); }
	private static __gshared UTEmit_HitEffect mDefaultProperties;
	@property final static UTEmit_HitEffect DefaultProperties() { mixin(MGDPC("UTEmit_HitEffect", "UTEmit_HitEffect UTGame.Default__UTEmit_HitEffect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAttachTo;
			ScriptFunction mPawnBaseDied;
		}
		public @property static final
		{
			ScriptFunction AttachTo() { mixin(MGF("mAttachTo", "Function UTGame.UTEmit_HitEffect.AttachTo")); }
			ScriptFunction PawnBaseDied() { mixin(MGF("mPawnBaseDied", "Function UTGame.UTEmit_HitEffect.PawnBaseDied")); }
		}
	}
final:
	void AttachTo(Pawn P, ScriptName NewBoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(ScriptName*)&params[4] = NewBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachTo, params.ptr, cast(void*)0);
	}
	void PawnBaseDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnBaseDied, cast(void*)0, cast(void*)0);
	}
}
