module UnrealScript.Engine.PBRuleNodeEdgeMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeMesh : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeEdgeMesh")); }
	private static __gshared PBRuleNodeEdgeMesh mDefaultProperties;
	@property final static PBRuleNodeEdgeMesh DefaultProperties() { mixin(MGDPC("PBRuleNodeEdgeMesh", "PBRuleNodeEdgeMesh Engine.Default__PBRuleNodeEdgeMesh")); }
	@property final auto ref
	{
		float MainXPullIn() { mixin(MGPC("float", 108)); }
		float FlatThreshold() { mixin(MGPC("float", 104)); }
	}
}
