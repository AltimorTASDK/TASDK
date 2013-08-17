module UnrealScript.Engine.SeqAct_SetDOFParams;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqAct_SetDOFParams : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetDOFParams")()); }
	private static __gshared SeqAct_SetDOFParams mDefaultProperties;
	@property final static SeqAct_SetDOFParams DefaultProperties() { mixin(MGDPC!(SeqAct_SetDOFParams, "SeqAct_SetDOFParams Engine.Default__SeqAct_SetDOFParams")()); }
	@property final auto ref
	{
		Vector OldFocusPosition() { mixin(MGPC!(Vector, 332)()); }
		float OldFocusDistance() { mixin(MGPC!(float, 328)()); }
		float OldFocusInnerRadius() { mixin(MGPC!(float, 324)()); }
		UObject.Color OldModulateBlurColor() { mixin(MGPC!(UObject.Color, 320)()); }
		float OldMaxFarBlurAmount() { mixin(MGPC!(float, 316)()); }
		float OldMinBlurAmount() { mixin(MGPC!(float, 312)()); }
		float OldMaxNearBlurAmount() { mixin(MGPC!(float, 308)()); }
		float OldBlurKernelSize() { mixin(MGPC!(float, 304)()); }
		float OldFalloffExponent() { mixin(MGPC!(float, 300)()); }
		float InterpolateElapsed() { mixin(MGPC!(float, 296)()); }
		float InterpolateSeconds() { mixin(MGPC!(float, 292)()); }
		Vector FocusPosition() { mixin(MGPC!(Vector, 280)()); }
		float FocusDistance() { mixin(MGPC!(float, 276)()); }
		float FocusInnerRadius() { mixin(MGPC!(float, 272)()); }
		UObject.Color ModulateBlurColor() { mixin(MGPC!(UObject.Color, 268)()); }
		float MaxFarBlurAmount() { mixin(MGPC!(float, 264)()); }
		float MinBlurAmount() { mixin(MGPC!(float, 260)()); }
		float MaxNearBlurAmount() { mixin(MGPC!(float, 256)()); }
		float BlurKernelSize() { mixin(MGPC!(float, 252)()); }
		float FalloffExponent() { mixin(MGPC!(float, 248)()); }
	}
}
