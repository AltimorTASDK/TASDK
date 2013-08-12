module UnrealScript.UDKBase.UDKAnimNodeFramePlayer;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface UDKAnimNodeFramePlayer : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimNodeFramePlayer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetAnimation;
			ScriptFunction mSetAnimPosition;
		}
		public @property static final
		{
			ScriptFunction SetAnimation() { return mSetAnimation ? mSetAnimation : (mSetAnimation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeFramePlayer.SetAnimation")); }
			ScriptFunction SetAnimPosition() { return mSetAnimPosition ? mSetAnimPosition : (mSetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeFramePlayer.SetAnimPosition")); }
		}
	}
final:
	void SetAnimation(ScriptName pSequence, float RateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = RateScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimation, params.ptr, cast(void*)0);
	}
	void SetAnimPosition(float Perc)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Perc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimPosition, params.ptr, cast(void*)0);
	}
}
