module UnrealScript.GameFramework.SeqEvent_MobileObjectPicker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileObjectPicker : SeqEvent_MobileRawInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_MobileObjectPicker")()); }
	private static __gshared SeqEvent_MobileObjectPicker mDefaultProperties;
	@property final static SeqEvent_MobileObjectPicker DefaultProperties() { mixin(MGDPC!(SeqEvent_MobileObjectPicker, "SeqEvent_MobileObjectPicker GameFramework.Default__SeqEvent_MobileObjectPicker")()); }
	@property final auto ref
	{
		ScriptArray!(UObject) Targets() { mixin(MGPC!("ScriptArray!(UObject)", 304)()); }
		UObject FinalTouchObject() { mixin(MGPC!("UObject", 300)()); }
		Vector FinalTouchNormal() { mixin(MGPC!("Vector", 288)()); }
		Vector FinalTouchLocation() { mixin(MGPC!("Vector", 276)()); }
		float TraceDistance() { mixin(MGPC!("float", 272)()); }
	}
}
