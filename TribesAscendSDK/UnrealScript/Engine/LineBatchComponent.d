module UnrealScript.Engine.LineBatchComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LineBatchComponent : PrimitiveComponent
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) BatchedLines() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 496); }
		ScriptArray!(UObject.Pointer) BatchedPoints() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 508); }
		float DefaultLifeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
		UObject.Pointer FPrimitiveDrawInterfaceView() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 492); }
		UObject.Pointer FPrimitiveDrawInterfaceVfTable() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 488); }
	}
}
