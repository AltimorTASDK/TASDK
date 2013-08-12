module UnrealScript.Engine.AnimNotify_PawnMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PawnMaterialParam : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_PawnMaterialParam")); }
	private static __gshared AnimNotify_PawnMaterialParam mDefaultProperties;
	@property final static AnimNotify_PawnMaterialParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_PawnMaterialParam)("AnimNotify_PawnMaterialParam Engine.Default__AnimNotify_PawnMaterialParam")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { return mNotify ? mNotify : (mNotify = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNotify_PawnMaterialParam.Notify")); }
	}
	@property final auto ref ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { return *cast(ScriptArray!(Pawn.ScalarParameterInterpStruct)*)(cast(size_t)cast(void*)this + 64); }
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
}
