module UnrealScript.Engine.SeqVar_Object;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Core.UObject;

extern(C++) interface SeqVar_Object : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Object")()); }
	private static __gshared SeqVar_Object mDefaultProperties;
	@property final static SeqVar_Object DefaultProperties() { mixin(MGDPC!(SeqVar_Object, "SeqVar_Object Engine.Default__SeqVar_Object")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectValue;
			ScriptFunction mSetObjectValue;
		}
		public @property static final
		{
			ScriptFunction GetObjectValue() { mixin(MGF!("mGetObjectValue", "Function Engine.SeqVar_Object.GetObjectValue")()); }
			ScriptFunction SetObjectValue() { mixin(MGF!("mSetObjectValue", "Function Engine.SeqVar_Object.SetObjectValue")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptClass) SupportedClasses() { mixin(MGPC!(ScriptArray!(ScriptClass), 164)()); }
		Vector ActorLocation() { mixin(MGPC!(Vector, 152)()); }
		UObject ObjValue() { mixin(MGPC!(UObject, 148)()); }
	}
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
