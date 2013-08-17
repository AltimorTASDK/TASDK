module UnrealScript.GameFramework.SeqAct_MobileClearInputZones;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileClearInputZones : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_MobileClearInputZones")()); }
	private static __gshared SeqAct_MobileClearInputZones mDefaultProperties;
	@property final static SeqAct_MobileClearInputZones DefaultProperties() { mixin(MGDPC!(SeqAct_MobileClearInputZones, "SeqAct_MobileClearInputZones GameFramework.Default__SeqAct_MobileClearInputZones")()); }
}
