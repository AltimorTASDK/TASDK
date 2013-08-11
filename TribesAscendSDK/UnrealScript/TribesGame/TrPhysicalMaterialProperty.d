module UnrealScript.TribesGame.TrPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface TrPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
	public @property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
