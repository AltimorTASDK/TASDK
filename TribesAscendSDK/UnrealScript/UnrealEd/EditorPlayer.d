module UnrealScript.UnrealEd.EditorPlayer;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;

extern(C++) interface EditorPlayer : LocalPlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorPlayer")); }
}
