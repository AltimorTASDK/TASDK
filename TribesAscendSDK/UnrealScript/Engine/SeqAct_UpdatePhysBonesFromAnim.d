module UnrealScript.Engine.SeqAct_UpdatePhysBonesFromAnim;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_UpdatePhysBonesFromAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_UpdatePhysBonesFromAnim")); }
	private static __gshared SeqAct_UpdatePhysBonesFromAnim mDefaultProperties;
	@property final static SeqAct_UpdatePhysBonesFromAnim DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_UpdatePhysBonesFromAnim)("SeqAct_UpdatePhysBonesFromAnim Engine.Default__SeqAct_UpdatePhysBonesFromAnim")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_UpdatePhysBonesFromAnim.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
