module UnrealScript.Engine.DebugCameraHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface DebugCameraHUD : HUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DebugCameraHUD")); }
	private static __gshared DebugCameraHUD mDefaultProperties;
	@property final static DebugCameraHUD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DebugCameraHUD)("DebugCameraHUD Engine.Default__DebugCameraHUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDisplayMaterials;
			ScriptFunction mPostRender;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraHUD.PostBeginPlay")); }
			ScriptFunction DisplayMaterials() { return mDisplayMaterials ? mDisplayMaterials : (mDisplayMaterials = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraHUD.DisplayMaterials")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraHUD.PostRender")); }
		}
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool DisplayMaterials(float X, float* Y, float DY, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = *Y;
		*cast(float*)&params[8] = DY;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = MeshComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayMaterials, params.ptr, cast(void*)0);
		*Y = *cast(float*)&params[4];
		return *cast(bool*)&params[16];
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
}
