module UnrealScript.Engine.SeqAct_SetApexClothingParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetApexClothingParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetApexClothingParam")); }
	private static __gshared SeqAct_SetApexClothingParam mDefaultProperties;
	@property final static SeqAct_SetApexClothingParam DefaultProperties() { mixin(MGDPC("SeqAct_SetApexClothingParam", "SeqAct_SetApexClothingParam Engine.Default__SeqAct_SetApexClothingParam")); }
	@property final
	{
		bool bEnableApexClothingSimulation() { mixin(MGBPC(232, 0x1)); }
		bool bEnableApexClothingSimulation(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}
