module UnrealScript.Engine.InterpTrackFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface InterpTrackFloatMaterialParam : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackFloatMaterialParam")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(EngineTypes.MaterialReferenceList) Materials() { return *cast(ScriptArray!(EngineTypes.MaterialReferenceList)*)(cast(size_t)cast(void*)this + 148); }
			ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 164); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
		bool bNeedsMaterialRefsUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bNeedsMaterialRefsUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	}
}
