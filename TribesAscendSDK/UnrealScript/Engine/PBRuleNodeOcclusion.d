module UnrealScript.Engine.PBRuleNodeOcclusion;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeOcclusion : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeOcclusion")); }
	private static __gshared PBRuleNodeOcclusion mDefaultProperties;
	@property final static PBRuleNodeOcclusion DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeOcclusion)("PBRuleNodeOcclusion Engine.Default__PBRuleNodeOcclusion")); }
}
