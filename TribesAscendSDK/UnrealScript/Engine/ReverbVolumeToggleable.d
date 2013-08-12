module UnrealScript.Engine.ReverbVolumeToggleable;

import ScriptClasses;
import UnrealScript.Engine.ReverbVolume;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface ReverbVolumeToggleable : ReverbVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ReverbVolumeToggleable")); }
	private static __gshared ReverbVolumeToggleable mDefaultProperties;
	@property final static ReverbVolumeToggleable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ReverbVolumeToggleable)("ReverbVolumeToggleable Engine.Default__ReverbVolumeToggleable")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.ReverbVolumeToggleable.OnToggle")); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
