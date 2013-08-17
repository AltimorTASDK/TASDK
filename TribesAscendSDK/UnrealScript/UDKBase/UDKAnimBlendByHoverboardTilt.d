module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTilt : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByHoverboardTilt")); }
	private static __gshared UDKAnimBlendByHoverboardTilt mDefaultProperties;
	@property final static UDKAnimBlendByHoverboardTilt DefaultProperties() { mixin(MGDPC("UDKAnimBlendByHoverboardTilt", "UDKAnimBlendByHoverboardTilt UDKBase.Default__UDKAnimBlendByHoverboardTilt")); }
	@property final auto ref
	{
		ScriptName UpperBodyName() { mixin(MGPC("ScriptName", 268)); }
		float TiltYScale() { mixin(MGPC("float", 264)); }
		float TiltDeadZone() { mixin(MGPC("float", 260)); }
		float TiltScale() { mixin(MGPC("float", 256)); }
		Vector UpVector() { mixin(MGPC("Vector", 244)); }
	}
}
