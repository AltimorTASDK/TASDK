module UnrealScript.Engine.SeqVar_ObjectList;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_ObjectList : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_ObjectList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectValue;
			ScriptFunction mSetObjectValue;
		}
		public @property static final
		{
			ScriptFunction GetObjectValue() { return mGetObjectValue ? mGetObjectValue : (mGetObjectValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqVar_ObjectList.GetObjectValue")); }
			ScriptFunction SetObjectValue() { return mSetObjectValue ? mSetObjectValue : (mSetObjectValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqVar_ObjectList.SetObjectValue")); }
		}
	}
	@property final auto ref ScriptArray!(UObject) ObjList() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 176); }
final:
	UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjectValue, params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	void SetObjectValue(UObject NewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetObjectValue, params.ptr, cast(void*)0);
	}
}
