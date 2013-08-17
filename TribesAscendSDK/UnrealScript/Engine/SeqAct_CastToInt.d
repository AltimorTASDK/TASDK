module UnrealScript.Engine.SeqAct_CastToInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_CastToInt")); }
	private static __gshared SeqAct_CastToInt mDefaultProperties;
	@property final static SeqAct_CastToInt DefaultProperties() { mixin(MGDPC("SeqAct_CastToInt", "SeqAct_CastToInt Engine.Default__SeqAct_CastToInt")); }
	@property final
	{
		auto ref
		{
			int IntResult() { mixin(MGPC("int", 240)); }
			float Value() { mixin(MGPC("float", 236)); }
		}
		bool bTruncate() { mixin(MGBPC(232, 0x1)); }
		bool bTruncate(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}
