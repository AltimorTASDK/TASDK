module UnrealScript.UTGame.UTPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface UTPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
public extern(D):
	@property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
