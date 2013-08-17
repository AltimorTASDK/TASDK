module UnrealScript.TribesGame.TrOrientedBoxComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface TrOrientedBoxComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrOrientedBoxComponent")); }
	private static __gshared TrOrientedBoxComponent mDefaultProperties;
	@property final static TrOrientedBoxComponent DefaultProperties() { mixin(MGDPC("TrOrientedBoxComponent", "TrOrientedBoxComponent TribesGame.Default__TrOrientedBoxComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBoxSize;
		public @property static final ScriptFunction SetBoxSize() { mixin(MGF("mSetBoxSize", "Function TribesGame.TrOrientedBoxComponent.SetBoxSize")); }
	}
	@property final auto ref
	{
		float BoxLength() { mixin(MGPC("float", 496)); }
		float BoxWidth() { mixin(MGPC("float", 492)); }
		float BoxHeight() { mixin(MGPC("float", 488)); }
	}
	final void SetBoxSize(float NewHeight, float NewLength, float NewWidth, bool* IsRadii = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = NewHeight;
		*cast(float*)&params[4] = NewLength;
		*cast(float*)&params[8] = NewWidth;
		if (IsRadii !is null)
			*cast(bool*)&params[12] = *IsRadii;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoxSize, params.ptr, cast(void*)0);
	}
}
