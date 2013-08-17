module UnrealScript.Engine.BlockingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Volume;

extern(C++) interface BlockingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.BlockingVolume")); }
	private static __gshared BlockingVolume mDefaultProperties;
	@property final static BlockingVolume DefaultProperties() { mixin(MGDPC("BlockingVolume", "BlockingVolume Engine.Default__BlockingVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.BlockingVolume.OnToggle")); }
	}
	@property final
	{
		bool bBlockCamera() { mixin(MGBPC(520, 0x1)); }
		bool bBlockCamera(bool val) { mixin(MSBPC(520, 0x1)); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
