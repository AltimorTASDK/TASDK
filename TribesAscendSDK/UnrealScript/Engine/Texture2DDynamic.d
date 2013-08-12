module UnrealScript.Engine.Texture2DDynamic;

import ScriptClasses;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2DDynamic : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Texture2DDynamic")); }
	private static __gshared Texture2DDynamic mDefaultProperties;
	@property final static Texture2DDynamic DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Texture2DDynamic)("Texture2DDynamic Engine.Default__Texture2DDynamic")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mCreate;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2DDynamic.Init")); }
			ScriptFunction Create() { return mCreate ? mCreate : (mCreate = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2DDynamic.Create")); }
		}
	}
	@property final
	{
		auto ref
		{
			int NumMips() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bIsResolveTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool bIsResolveTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
final:
	void Init(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, bool InIsResolveTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(bool*)&params[12] = InIsResolveTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	static Texture2DDynamic Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, bool InIsResolveTarget)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(bool*)&params[12] = InIsResolveTarget;
		StaticClass.ProcessEvent(Functions.Create, params.ptr, cast(void*)0);
		return *cast(Texture2DDynamic*)&params[16];
	}
}
