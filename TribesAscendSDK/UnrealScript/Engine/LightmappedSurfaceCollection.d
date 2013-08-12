module UnrealScript.Engine.LightmappedSurfaceCollection;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;

extern(C++) interface LightmappedSurfaceCollection : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightmappedSurfaceCollection")); }
	@property final auto ref
	{
		ScriptArray!(int) Surfaces() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 64); }
		Model SourceModel() { return *cast(Model*)(cast(size_t)cast(void*)this + 60); }
	}
}
