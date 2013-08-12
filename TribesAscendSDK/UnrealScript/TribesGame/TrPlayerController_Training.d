module UnrealScript.TribesGame.TrPlayerController_Training;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPlayerController_Training : TrPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerController_Training")); }
}
