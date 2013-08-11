module UnrealScript.Engine.MeshComponentFactory;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponentFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface MeshComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	@property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 64); }
}
