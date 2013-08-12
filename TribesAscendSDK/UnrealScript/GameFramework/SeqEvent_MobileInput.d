module UnrealScript.GameFramework.SeqEvent_MobileInput;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileInput : SeqEvent_MobileZoneBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileInput")); }
	private static __gshared SeqEvent_MobileInput mDefaultProperties;
	@property final static SeqEvent_MobileInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_MobileInput)("SeqEvent_MobileInput GameFramework.Default__SeqEvent_MobileInput")); }
	@property final auto ref
	{
		float CurrentY() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
		float CurrentX() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
		float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
		float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		float YAxisValue() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		float XAxisValue() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	}
}
