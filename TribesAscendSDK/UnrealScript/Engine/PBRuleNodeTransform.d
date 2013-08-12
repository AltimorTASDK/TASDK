module UnrealScript.Engine.PBRuleNodeTransform;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeTransform : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeTransform")); }
	private static __gshared PBRuleNodeTransform mDefaultProperties;
	@property final static PBRuleNodeTransform DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeTransform)("PBRuleNodeTransform Engine.Default__PBRuleNodeTransform")); }
}
