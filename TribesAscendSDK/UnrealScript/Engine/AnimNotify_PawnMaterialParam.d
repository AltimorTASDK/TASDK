module UnrealScript.Engine.AnimNotify_PawnMaterialParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PawnMaterialParam : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_PawnMaterialParam")()); }
	private static __gshared AnimNotify_PawnMaterialParam mDefaultProperties;
	@property final static AnimNotify_PawnMaterialParam DefaultProperties() { mixin(MGDPC!(AnimNotify_PawnMaterialParam, "AnimNotify_PawnMaterialParam Engine.Default__AnimNotify_PawnMaterialParam")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { mixin(MGF!("mNotify", "Function Engine.AnimNotify_PawnMaterialParam.Notify")()); }
	}
	@property final auto ref ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { mixin(MGPC!("ScriptArray!(Pawn.ScalarParameterInterpStruct)", 64)()); }
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
}
