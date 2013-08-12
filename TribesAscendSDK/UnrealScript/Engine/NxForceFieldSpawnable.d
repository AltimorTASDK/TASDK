module UnrealScript.Engine.NxForceFieldSpawnable;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface NxForceFieldSpawnable : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxForceFieldSpawnable")); }
	private static __gshared NxForceFieldSpawnable mDefaultProperties;
	@property final static NxForceFieldSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxForceFieldSpawnable)("NxForceFieldSpawnable Engine.Default__NxForceFieldSpawnable")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceFieldSpawnable.OnToggle")); }
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
