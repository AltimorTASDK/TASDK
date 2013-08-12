module UnrealScript.Engine.ActorFactoryDecalMovable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryDecal;

extern(C++) interface ActorFactoryDecalMovable : ActorFactoryDecal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryDecalMovable")); }
}
