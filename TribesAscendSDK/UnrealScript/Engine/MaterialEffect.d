module UnrealScript.Engine.MaterialEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface MaterialEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialEffect")); }
	// WARNING: Property 'Material' has the same name as a defined type!
}
