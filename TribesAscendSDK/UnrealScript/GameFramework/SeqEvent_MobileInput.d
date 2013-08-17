module UnrealScript.GameFramework.SeqEvent_MobileInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileInput : SeqEvent_MobileZoneBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_MobileInput")()); }
	private static __gshared SeqEvent_MobileInput mDefaultProperties;
	@property final static SeqEvent_MobileInput DefaultProperties() { mixin(MGDPC!(SeqEvent_MobileInput, "SeqEvent_MobileInput GameFramework.Default__SeqEvent_MobileInput")()); }
	@property final auto ref
	{
		float CurrentY() { mixin(MGPC!("float", 288)()); }
		float CurrentX() { mixin(MGPC!("float", 284)()); }
		float CenterY() { mixin(MGPC!("float", 280)()); }
		float CenterX() { mixin(MGPC!("float", 276)()); }
		float YAxisValue() { mixin(MGPC!("float", 272)()); }
		float XAxisValue() { mixin(MGPC!("float", 268)()); }
	}
}
