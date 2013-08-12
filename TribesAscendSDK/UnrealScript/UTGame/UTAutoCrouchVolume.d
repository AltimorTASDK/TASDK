module UnrealScript.UTGame.UTAutoCrouchVolume;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface UTAutoCrouchVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAutoCrouchVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mSetCrouch;
			ScriptFunction mUnTouch;
			ScriptFunction mCrouchTimer;
		}
		public @property static final
		{
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAutoCrouchVolume.Touch")); }
			ScriptFunction SetCrouch() { return mSetCrouch ? mSetCrouch : (mSetCrouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAutoCrouchVolume.SetCrouch")); }
			ScriptFunction UnTouch() { return mUnTouch ? mUnTouch : (mUnTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAutoCrouchVolume.UnTouch")); }
			ScriptFunction CrouchTimer() { return mCrouchTimer ? mCrouchTimer : (mCrouchTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAutoCrouchVolume.CrouchTimer")); }
		}
	}
final:
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void SetCrouch(Pawn P, ubyte bCrouch)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		params[4] = bCrouch;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCrouch, params.ptr, cast(void*)0);
	}
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	void CrouchTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CrouchTimer, cast(void*)0, cast(void*)0);
	}
}
