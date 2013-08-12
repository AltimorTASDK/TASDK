module UnrealScript.TribesGame.TrOrientedBoxComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface TrOrientedBoxComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrOrientedBoxComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBoxSize;
		public @property static final ScriptFunction SetBoxSize() { return mSetBoxSize ? mSetBoxSize : (mSetBoxSize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrOrientedBoxComponent.SetBoxSize")); }
	}
	@property final auto ref
	{
		float BoxLength() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float BoxWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		float BoxHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	}
	final void SetBoxSize(float NewHeight, float NewLength, float NewWidth, bool IsRadii)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = NewHeight;
		*cast(float*)&params[4] = NewLength;
		*cast(float*)&params[8] = NewWidth;
		*cast(bool*)&params[12] = IsRadii;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoxSize, params.ptr, cast(void*)0);
	}
}
