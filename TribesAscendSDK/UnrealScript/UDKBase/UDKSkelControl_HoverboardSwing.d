module UnrealScript.UDKBase.UDKSkelControl_HoverboardSwing;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSwing : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_HoverboardSwing")()); }
	private static __gshared UDKSkelControl_HoverboardSwing mDefaultProperties;
	@property final static UDKSkelControl_HoverboardSwing DefaultProperties() { mixin(MGDPC!(UDKSkelControl_HoverboardSwing, "UDKSkelControl_HoverboardSwing UDKBase.Default__UDKSkelControl_HoverboardSwing")()); }
	@property final auto ref
	{
		ScriptArray!(float) SwingHistory() { mixin(MGPC!("ScriptArray!(float)", 244)()); }
		float CurrentSwing() { mixin(MGPC!("float", 268)()); }
		float MaxUseVel() { mixin(MGPC!("float", 264)()); }
		float MaxSwing() { mixin(MGPC!("float", 260)()); }
		float SwingScale() { mixin(MGPC!("float", 256)()); }
		int SwingHistorySlot() { mixin(MGPC!("int", 240)()); }
		int SwingHistoryWindow() { mixin(MGPC!("int", 236)()); }
	}
}
