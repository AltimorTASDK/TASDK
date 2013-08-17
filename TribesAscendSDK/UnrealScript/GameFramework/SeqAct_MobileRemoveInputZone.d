module UnrealScript.GameFramework.SeqAct_MobileRemoveInputZone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileRemoveInputZone : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_MobileRemoveInputZone")()); }
	private static __gshared SeqAct_MobileRemoveInputZone mDefaultProperties;
	@property final static SeqAct_MobileRemoveInputZone DefaultProperties() { mixin(MGDPC!(SeqAct_MobileRemoveInputZone, "SeqAct_MobileRemoveInputZone GameFramework.Default__SeqAct_MobileRemoveInputZone")()); }
	@property final auto ref ScriptString ZoneName() { mixin(MGPC!("ScriptString", 232)()); }
}
