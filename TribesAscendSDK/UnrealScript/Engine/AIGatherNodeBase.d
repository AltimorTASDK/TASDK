module UnrealScript.Engine.AIGatherNodeBase;

import ScriptClasses;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface AIGatherNodeBase : K2NodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AIGatherNodeBase")); }
	private static __gshared AIGatherNodeBase mDefaultProperties;
	@property final static AIGatherNodeBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AIGatherNodeBase)("AIGatherNodeBase Engine.Default__AIGatherNodeBase")); }
	@property final auto ref
	{
		ScriptString NodeName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	}
}
