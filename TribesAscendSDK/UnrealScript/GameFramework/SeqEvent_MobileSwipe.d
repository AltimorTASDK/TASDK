module UnrealScript.GameFramework.SeqEvent_MobileSwipe;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileSwipe : SeqEvent_MobileRawInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_MobileSwipe")()); }
	private static __gshared SeqEvent_MobileSwipe mDefaultProperties;
	@property final static SeqEvent_MobileSwipe DefaultProperties() { mixin(MGDPC!(SeqEvent_MobileSwipe, "SeqEvent_MobileSwipe GameFramework.Default__SeqEvent_MobileSwipe")()); }
	@property final auto ref
	{
		UObject.Vector2D InitialTouch() { mixin(MGPC!("UObject.Vector2D", 280)()); }
		float MinDistance() { mixin(MGPC!("float", 276)()); }
		float Tolerance() { mixin(MGPC!("float", 272)()); }
	}
}
