module UnrealScript.GameFramework.GameCrowdForcePoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdInteractionPoint;

extern(C++) interface GameCrowdForcePoint : GameCrowdInteractionPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdForcePoint")); }
	private static __gshared GameCrowdForcePoint mDefaultProperties;
	@property final static GameCrowdForcePoint DefaultProperties() { mixin(MGDPC("GameCrowdForcePoint", "GameCrowdForcePoint GameFramework.Default__GameCrowdForcePoint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mAppliedForce;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function GameFramework.GameCrowdForcePoint.Touch")); }
			ScriptFunction UnTouch() { mixin(MGF("mUnTouch", "Function GameFramework.GameCrowdForcePoint.UnTouch")); }
			ScriptFunction AppliedForce() { mixin(MGF("mAppliedForce", "Function GameFramework.GameCrowdForcePoint.AppliedForce")); }
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
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	Vector AppliedForce(GameCrowdAgent Agent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppliedForce, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
