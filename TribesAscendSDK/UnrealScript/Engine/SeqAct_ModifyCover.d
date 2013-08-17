module UnrealScript.Engine.SeqAct_ModifyCover;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyCover : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ModifyCover")()); }
	private static __gshared SeqAct_ModifyCover mDefaultProperties;
	@property final static SeqAct_ModifyCover DefaultProperties() { mixin(MGDPC!(SeqAct_ModifyCover, "SeqAct_ModifyCover Engine.Default__SeqAct_ModifyCover")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(int) Slots() { mixin(MGPC!(ScriptArray!(int), 232)()); }
			CoverLink.ECoverType ManualCoverType() { mixin(MGPC!(CoverLink.ECoverType, 244)()); }
		}
		bool bManualAdjustPlayersOnly() { mixin(MGBPC!(248, 0x1)()); }
		bool bManualAdjustPlayersOnly(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
}
