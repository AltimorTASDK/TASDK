module UnrealScript.Engine.LightmappedSurfaceCollection;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;

extern(C++) interface LightmappedSurfaceCollection : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(int) Surfaces() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 64); }
		Model SourceModel() { return *cast(Model*)(cast(size_t)cast(void*)this + 60); }
	}
}
