module UnrealScript.Engine.SeqAct_Switch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Switch : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Switch")()); }
	private static __gshared SeqAct_Switch mDefaultProperties;
	@property final static SeqAct_Switch DefaultProperties() { mixin(MGDPC!(SeqAct_Switch, "SeqAct_Switch Engine.Default__SeqAct_Switch")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(int) Indices() { mixin(MGPC!("ScriptArray!(int)", 244)()); }
			int IncrementAmount() { mixin(MGPC!("int", 236)()); }
			int LinkCount() { mixin(MGPC!("int", 232)()); }
		}
		bool bAutoDisableLinks() { mixin(MGBPC!(240, 0x2)()); }
		bool bAutoDisableLinks(bool val) { mixin(MSBPC!(240, 0x2)()); }
		bool bLooping() { mixin(MGBPC!(240, 0x1)()); }
		bool bLooping(bool val) { mixin(MSBPC!(240, 0x1)()); }
	}
}
