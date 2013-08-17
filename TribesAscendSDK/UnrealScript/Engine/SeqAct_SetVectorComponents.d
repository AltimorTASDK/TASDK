module UnrealScript.Engine.SeqAct_SetVectorComponents;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetVectorComponents : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetVectorComponents")()); }
	private static __gshared SeqAct_SetVectorComponents mDefaultProperties;
	@property final static SeqAct_SetVectorComponents DefaultProperties() { mixin(MGDPC!(SeqAct_SetVectorComponents, "SeqAct_SetVectorComponents Engine.Default__SeqAct_SetVectorComponents")()); }
	@property final auto ref
	{
		float Z() { mixin(MGPC!("float", 252)()); }
		float Y() { mixin(MGPC!("float", 248)()); }
		float X() { mixin(MGPC!("float", 244)()); }
		Vector OutVector() { mixin(MGPC!("Vector", 232)()); }
	}
}
