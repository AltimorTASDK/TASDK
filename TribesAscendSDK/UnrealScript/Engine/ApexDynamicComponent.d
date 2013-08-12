module UnrealScript.Engine.ApexDynamicComponent;

import ScriptClasses;
import UnrealScript.Engine.ApexComponentBase;
import UnrealScript.Core.UObject;

extern(C++) interface ApexDynamicComponent : ApexComponentBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexDynamicComponent")); }
	private static __gshared ApexDynamicComponent mDefaultProperties;
	@property final static ApexDynamicComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexDynamicComponent)("ApexDynamicComponent Engine.Default__ApexDynamicComponent")); }
	@property final auto ref UObject.Pointer ComponentDynamicResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
}
