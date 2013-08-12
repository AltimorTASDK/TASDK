module UnrealScript.Engine.MeshComponentFactory;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponentFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface MeshComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MeshComponentFactory")); }
	@property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 64); }
}
