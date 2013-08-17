module UnrealScript.Engine.SeqAct_SetVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetVector : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetVector")()); }
	private static __gshared SeqAct_SetVector mDefaultProperties;
	@property final static SeqAct_SetVector DefaultProperties() { mixin(MGDPC!(SeqAct_SetVector, "SeqAct_SetVector Engine.Default__SeqAct_SetVector")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function Engine.SeqAct_SetVector.Activated")()); }
	}
	@property final auto ref Vector DefaultValue() { mixin(MGPC!("Vector", 232)()); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
