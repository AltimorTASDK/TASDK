module UnrealScript.Engine.SequenceObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Sequence;

extern(C++) interface SequenceObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SequenceObject")()); }
	private static __gshared SequenceObject mDefaultProperties;
	@property final static SequenceObject DefaultProperties() { mixin(MGDPC!(SequenceObject, "SequenceObject Engine.Default__SequenceObject")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mScriptLog;
			ScriptFunction mGetWorldInfo;
			ScriptFunction mIsValidLevelSequenceObject;
			ScriptFunction mIsPastingIntoLevelSequenceAllowed;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SequenceObject.GetObjClassVersion")()); }
			ScriptFunction ScriptLog() { mixin(MGF!("mScriptLog", "Function Engine.SequenceObject.ScriptLog")()); }
			ScriptFunction GetWorldInfo() { mixin(MGF!("mGetWorldInfo", "Function Engine.SequenceObject.GetWorldInfo")()); }
			ScriptFunction IsValidLevelSequenceObject() { mixin(MGF!("mIsValidLevelSequenceObject", "Function Engine.SequenceObject.IsValidLevelSequenceObject")()); }
			ScriptFunction IsPastingIntoLevelSequenceAllowed() { mixin(MGF!("mIsPastingIntoLevelSequenceAllowed", "Function Engine.SequenceObject.IsPastingIntoLevelSequenceAllowed")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ObjInstanceVersion() { mixin(MGPC!("int", 60)()); }
			ScriptArray!(ScriptString) ObjRemoveInProject() { mixin(MGPC!("ScriptArray!(ScriptString)", 100)()); }
			int DrawHeight() { mixin(MGPC!("int", 136)()); }
			int DrawWidth() { mixin(MGPC!("int", 132)()); }
			ScriptString ObjComment() { mixin(MGPC!("ScriptString", 116)()); }
			UObject.Color ObjColor() { mixin(MGPC!("UObject.Color", 112)()); }
			ScriptString ObjCategory() { mixin(MGPC!("ScriptString", 88)()); }
			ScriptString ObjName() { mixin(MGPC!("ScriptString", 76)()); }
			int ObjPosY() { mixin(MGPC!("int", 72)()); }
			int ObjPosX() { mixin(MGPC!("int", 68)()); }
			Sequence ParentSequence() { mixin(MGPC!("Sequence", 64)()); }
		}
		bool bSuppressAutoComment() { mixin(MGBPC!(128, 0x10)()); }
		bool bSuppressAutoComment(bool val) { mixin(MSBPC!(128, 0x10)()); }
		bool bOutputObjCommentToScreen() { mixin(MGBPC!(128, 0x8)()); }
		bool bOutputObjCommentToScreen(bool val) { mixin(MSBPC!(128, 0x8)()); }
		bool bDrawLast() { mixin(MGBPC!(128, 0x4)()); }
		bool bDrawLast(bool val) { mixin(MSBPC!(128, 0x4)()); }
		bool bDrawFirst() { mixin(MGBPC!(128, 0x2)()); }
		bool bDrawFirst(bool val) { mixin(MSBPC!(128, 0x2)()); }
		bool bDeletable() { mixin(MGBPC!(128, 0x1)()); }
		bool bDeletable(bool val) { mixin(MSBPC!(128, 0x1)()); }
	}
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ScriptLog(ScriptString LogText, bool* bWarning = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		if (bWarning !is null)
			*cast(bool*)&params[12] = *bWarning;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScriptLog, params.ptr, cast(void*)0);
	}
	WorldInfo GetWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWorldInfo, params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPastingIntoLevelSequenceAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPastingIntoLevelSequenceAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
