module UnrealScript.Engine.Texture2DDynamic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2DDynamic : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Texture2DDynamic")()); }
	private static __gshared Texture2DDynamic mDefaultProperties;
	@property final static Texture2DDynamic DefaultProperties() { mixin(MGDPC!(Texture2DDynamic, "Texture2DDynamic Engine.Default__Texture2DDynamic")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mCreate;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function Engine.Texture2DDynamic.Init")()); }
			ScriptFunction Create() { mixin(MGF!("mCreate", "Function Engine.Texture2DDynamic.Create")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int NumMips() { mixin(MGPC!(int, 248)()); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { mixin(MGPC!(int, 240)()); }
			int SizeX() { mixin(MGPC!(int, 236)()); }
		}
		bool bIsResolveTarget() { mixin(MGBPC!(252, 0x1)()); }
		bool bIsResolveTarget(bool val) { mixin(MSBPC!(252, 0x1)()); }
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
