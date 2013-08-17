module UnrealScript.Engine.MorphTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;

extern(C++) interface MorphTarget : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphTarget")()); }
	private static __gshared MorphTarget mDefaultProperties;
	@property final static MorphTarget DefaultProperties() { mixin(MGDPC!(MorphTarget, "MorphTarget Engine.Default__MorphTarget")()); }
	@property final auto ref
	{
		ScriptArray!(int) MorphLODModels() { mixin(MGPC!(ScriptArray!(int), 60)()); }
		// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
		ScriptName ScalarParameterName() { mixin(MGPC!(ScriptName, 76)()); }
		int MaterialSlotId() { mixin(MGPC!(int, 72)()); }
	}
}
