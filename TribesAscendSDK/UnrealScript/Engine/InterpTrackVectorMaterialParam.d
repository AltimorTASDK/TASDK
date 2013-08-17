module UnrealScript.Engine.InterpTrackVectorMaterialParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.InterpTrackVectorBase;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface InterpTrackVectorMaterialParam : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackVectorMaterialParam")()); }
	private static __gshared InterpTrackVectorMaterialParam mDefaultProperties;
	@property final static InterpTrackVectorMaterialParam DefaultProperties() { mixin(MGDPC!(InterpTrackVectorMaterialParam, "InterpTrackVectorMaterialParam Engine.Default__InterpTrackVectorMaterialParam")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(EngineTypes.MaterialReferenceList) Materials() { mixin(MGPC!(ScriptArray!(EngineTypes.MaterialReferenceList), 148)()); }
			ScriptName ParamName() { mixin(MGPC!(ScriptName, 164)()); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
		bool bNeedsMaterialRefsUpdate() { mixin(MGBPC!(172, 0x1)()); }
		bool bNeedsMaterialRefsUpdate(bool val) { mixin(MSBPC!(172, 0x1)()); }
	}
}
