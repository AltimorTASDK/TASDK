module UnrealScript.UDKBase.UDKAnimBlendBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendBySpeed : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendBySpeed")); }
	private static __gshared UDKAnimBlendBySpeed mDefaultProperties;
	@property final static UDKAnimBlendBySpeed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimBlendBySpeed)("UDKAnimBlendBySpeed UDKBase.Default__UDKAnimBlendBySpeed")); }
	@property final auto ref
	{
		float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	}
}
