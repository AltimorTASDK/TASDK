module UnrealScript.GameFramework.SeqEvent_MobileObjectPicker;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileObjectPicker : SeqEvent_MobileRawInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileObjectPicker")); }
	private static __gshared SeqEvent_MobileObjectPicker mDefaultProperties;
	@property final static SeqEvent_MobileObjectPicker DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_MobileObjectPicker)("SeqEvent_MobileObjectPicker GameFramework.Default__SeqEvent_MobileObjectPicker")); }
	@property final auto ref
	{
		ScriptArray!(UObject) Targets() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 304); }
		UObject FinalTouchObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 300); }
		Vector FinalTouchNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
		Vector FinalTouchLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
		float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	}
}
