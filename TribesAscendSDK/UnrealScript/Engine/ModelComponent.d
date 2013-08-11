module UnrealScript.Engine.ModelComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ModelComponent : PrimitiveComponent
{
	public @property final auto ref ScriptArray!(UObject.Pointer) Nodes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(UObject.Pointer) Elements() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref int ComponentIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int ZoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	// WARNING: Property 'Model' has the same name as a defined type!
}
