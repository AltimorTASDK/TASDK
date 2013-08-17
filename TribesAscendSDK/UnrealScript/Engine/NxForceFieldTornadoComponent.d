module UnrealScript.Engine.NxForceFieldTornadoComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;

extern(C++) interface NxForceFieldTornadoComponent : NxForceFieldComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxForceFieldTornadoComponent")()); }
	private static __gshared NxForceFieldTornadoComponent mDefaultProperties;
	@property final static NxForceFieldTornadoComponent DefaultProperties() { mixin(MGDPC!(NxForceFieldTornadoComponent, "NxForceFieldTornadoComponent Engine.Default__NxForceFieldTornadoComponent")()); }
	@property final
	{
		auto ref
		{
			UObject.Pointer Kernel() { mixin(MGPC!(UObject.Pointer, 612)()); }
			float SelfRotationStrength() { mixin(MGPC!(float, 608)()); }
			float HeightOffset() { mixin(MGPC!(float, 600)()); }
			float ForceHeight() { mixin(MGPC!(float, 596)()); }
			float EscapeVelocity() { mixin(MGPC!(float, 592)()); }
			float LiftFalloffHeight() { mixin(MGPC!(float, 588)()); }
			float ForceTopRadius() { mixin(MGPC!(float, 584)()); }
			float ForceRadius() { mixin(MGPC!(float, 580)()); }
			float LiftStrength() { mixin(MGPC!(float, 576)()); }
			float RotationalStrength() { mixin(MGPC!(float, 572)()); }
			float RadialStrength() { mixin(MGPC!(float, 568)()); }
		}
		bool BSpecialRadialForceMode() { mixin(MGBPC!(604, 0x1)()); }
		bool BSpecialRadialForceMode(bool val) { mixin(MSBPC!(604, 0x1)()); }
	}
}
