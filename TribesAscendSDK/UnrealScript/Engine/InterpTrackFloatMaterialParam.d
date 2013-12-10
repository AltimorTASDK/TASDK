module UnrealScript.Engine.InterpTrackFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface InterpTrackFloatMaterialParam : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackFloatMaterialParam")); }
	private static __gshared InterpTrackFloatMaterialParam mDefaultProperties;
	@property final static InterpTrackFloatMaterialParam DefaultProperties() { mixin(MGDPC("InterpTrackFloatMaterialParam", "InterpTrackFloatMaterialParam Engine.Default__InterpTrackFloatMaterialParam")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(EngineTypes.MaterialReferenceList) Materials() { mixin(MGPC("ScriptArray!(EngineTypes.MaterialReferenceList)", 148)); }
			ScriptName ParamName() { mixin(MGPC("ScriptName", 164)); }
			MaterialInterface MaterialVar() { mixin(MGPC("MaterialInterface", 160)); }
		}
		bool bNeedsMaterialRefsUpdate() { mixin(MGBPC(172, 0x1)); }
		bool bNeedsMaterialRefsUpdate(bool val) { mixin(MSBPC(172, 0x1)); }
	}
}
