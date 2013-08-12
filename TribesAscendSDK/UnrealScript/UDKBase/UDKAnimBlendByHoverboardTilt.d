module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTilt : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByHoverboardTilt")); }
	private static __gshared UDKAnimBlendByHoverboardTilt mDefaultProperties;
	@property final static UDKAnimBlendByHoverboardTilt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimBlendByHoverboardTilt)("UDKAnimBlendByHoverboardTilt UDKBase.Default__UDKAnimBlendByHoverboardTilt")); }
	@property final auto ref
	{
		ScriptName UpperBodyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
		float TiltYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float TiltDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float TiltScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		Vector UpVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
	}
}
