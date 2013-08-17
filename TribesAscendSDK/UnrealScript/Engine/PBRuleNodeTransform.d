module UnrealScript.Engine.PBRuleNodeTransform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeTransform : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeTransform")()); }
	private static __gshared PBRuleNodeTransform mDefaultProperties;
	@property final static PBRuleNodeTransform DefaultProperties() { mixin(MGDPC!(PBRuleNodeTransform, "PBRuleNodeTransform Engine.Default__PBRuleNodeTransform")()); }
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Scale'!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Rotation'!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Translation'!
	}
}
