module UnrealScript.UnrealEd.ActorFactorySelection;

import ScriptClasses;
import UnrealScript.Engine.Selection;

extern(C++) interface ActorFactorySelection : Selection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ActorFactorySelection")); }
}
