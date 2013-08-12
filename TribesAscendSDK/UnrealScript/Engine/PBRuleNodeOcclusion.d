module UnrealScript.Engine.PBRuleNodeOcclusion;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeOcclusion : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeOcclusion")); }
}
