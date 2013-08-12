module UnrealScript.Engine.ActorFactoryDecal;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ActorFactoryDecal : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryDecal")); }
	// WARNING: Property 'DecalMaterial' has the same name as a defined type!
}
