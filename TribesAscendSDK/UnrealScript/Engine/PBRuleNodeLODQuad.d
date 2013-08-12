module UnrealScript.Engine.PBRuleNodeLODQuad;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeLODQuad : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeLODQuad")); }
	private static __gshared PBRuleNodeLODQuad mDefaultProperties;
	@property final static PBRuleNodeLODQuad DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeLODQuad)("PBRuleNodeLODQuad Engine.Default__PBRuleNodeLODQuad")); }
	@property final auto ref float MassiveLODDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
