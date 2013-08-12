module UnrealScript.UTGame.UTEmit_HitEffect;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTEmit_HitEffect : UTEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmit_HitEffect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAttachTo;
			ScriptFunction mPawnBaseDied;
		}
		public @property static final
		{
			ScriptFunction AttachTo() { return mAttachTo ? mAttachTo : (mAttachTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEmit_HitEffect.AttachTo")); }
			ScriptFunction PawnBaseDied() { return mPawnBaseDied ? mPawnBaseDied : (mPawnBaseDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEmit_HitEffect.PawnBaseDied")); }
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
