module UnrealScript.Engine.ApexGenericAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ApexGenericAsset : ApexAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexGenericAsset")); }
	@property final auto ref
	{
		ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 112); }
		UObject.Pointer MApexAsset() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
	}
}
