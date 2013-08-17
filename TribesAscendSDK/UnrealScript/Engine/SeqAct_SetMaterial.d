module UnrealScript.Engine.SeqAct_SetMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMaterial : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMaterial")()); }
	private static __gshared SeqAct_SetMaterial mDefaultProperties;
	@property final static SeqAct_SetMaterial DefaultProperties() { mixin(MGDPC!(SeqAct_SetMaterial, "SeqAct_SetMaterial Engine.Default__SeqAct_SetMaterial")()); }
	@property final auto ref
	{
		int MaterialIndex() { mixin(MGPC!("int", 236)()); }
		MaterialInterface NewMaterial() { mixin(MGPC!("MaterialInterface", 232)()); }
	}
}
