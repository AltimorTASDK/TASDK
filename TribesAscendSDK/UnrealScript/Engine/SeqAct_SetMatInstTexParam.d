module UnrealScript.Engine.SeqAct_SetMatInstTexParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_SetMatInstTexParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMatInstTexParam")()); }
	private static __gshared SeqAct_SetMatInstTexParam mDefaultProperties;
	@property final static SeqAct_SetMatInstTexParam DefaultProperties() { mixin(MGDPC!(SeqAct_SetMatInstTexParam, "SeqAct_SetMatInstTexParam Engine.Default__SeqAct_SetMatInstTexParam")()); }
	@property final auto ref
	{
		ScriptName ParamName() { mixin(MGPC!(ScriptName, 240)()); }
		Texture NewTexture() { mixin(MGPC!(Texture, 236)()); }
		MaterialInstanceConstant MatInst() { mixin(MGPC!(MaterialInstanceConstant, 232)()); }
	}
}
