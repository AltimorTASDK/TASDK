module UnrealScript.GameFramework.GameCrowdInteractionDestination;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdInteractionDestination : GameCrowdDestination
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdInteractionDestination")); }
}
