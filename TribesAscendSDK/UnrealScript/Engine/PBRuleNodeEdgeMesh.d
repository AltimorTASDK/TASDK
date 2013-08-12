module UnrealScript.Engine.PBRuleNodeEdgeMesh;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeMesh : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeEdgeMesh")); }
	private static __gshared PBRuleNodeEdgeMesh mDefaultProperties;
	@property final static PBRuleNodeEdgeMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeEdgeMesh)("PBRuleNodeEdgeMesh Engine.Default__PBRuleNodeEdgeMesh")); }
	@property final auto ref
	{
		float MainXPullIn() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		float FlatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	}
}
