module UnrealScript.Engine.PBRuleNodeLODQuad;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeLODQuad : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeLODQuad")()); }
	private static __gshared PBRuleNodeLODQuad mDefaultProperties;
	@property final static PBRuleNodeLODQuad DefaultProperties() { mixin(MGDPC!(PBRuleNodeLODQuad, "PBRuleNodeLODQuad Engine.Default__PBRuleNodeLODQuad")()); }
	@property final auto ref float MassiveLODDistanceScale() { mixin(MGPC!(float, 104)()); }
}
