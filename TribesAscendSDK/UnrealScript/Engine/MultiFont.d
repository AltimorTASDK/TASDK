module UnrealScript.Engine.MultiFont;

import ScriptClasses;
import UnrealScript.Engine.Font;

extern(C++) interface MultiFont : Font
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MultiFont")); }
	private static __gshared MultiFont mDefaultProperties;
	@property final static MultiFont DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MultiFont)("MultiFont Engine.Default__MultiFont")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetResolutionTestTableIndex;
		public @property static final ScriptFunction GetResolutionTestTableIndex() { return mGetResolutionTestTableIndex ? mGetResolutionTestTableIndex : (mGetResolutionTestTableIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.MultiFont.GetResolutionTestTableIndex")); }
	}
	@property final auto ref ScriptArray!(float) ResolutionTestTable() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 332); }
	final int GetResolutionTestTableIndex(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResolutionTestTableIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
