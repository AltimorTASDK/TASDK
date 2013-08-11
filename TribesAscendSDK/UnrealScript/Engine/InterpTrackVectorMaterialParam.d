module UnrealScript.Engine.InterpTrackVectorMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.InterpTrackVectorBase;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface InterpTrackVectorMaterialParam : InterpTrackVectorBase
{
	public @property final auto ref ScriptArray!(EngineTypes.MaterialReferenceList) Materials() { return *cast(ScriptArray!(EngineTypes.MaterialReferenceList)*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bNeedsMaterialRefsUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bNeedsMaterialRefsUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 164); }
	// WARNING: Property 'Material' has the same name as a defined type!
}
