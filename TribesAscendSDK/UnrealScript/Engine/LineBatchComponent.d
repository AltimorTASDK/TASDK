module UnrealScript.Engine.LineBatchComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LineBatchComponent : PrimitiveComponent
{
	public @property final auto ref ScriptArray!(UObject.Pointer) BatchedLines() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptArray!(UObject.Pointer) BatchedPoints() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float DefaultLifeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref UObject.Pointer FPrimitiveDrawInterfaceView() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Pointer FPrimitiveDrawInterfaceVfTable() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 488); }
}
