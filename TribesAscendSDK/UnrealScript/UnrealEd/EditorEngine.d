module UnrealScript.UnrealEd.EditorEngine;

import ScriptClasses;
import UnrealScript.Engine.Engine;

extern(C++) interface EditorEngine : Engine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorEngine")); }
}
