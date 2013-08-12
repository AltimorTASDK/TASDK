module UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

import ScriptClasses;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_SpectatorBookmark : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCamera_SpectatorBookmark")); }
	private static __gshared TrCamera_SpectatorBookmark mDefaultProperties;
	@property final static TrCamera_SpectatorBookmark DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCamera_SpectatorBookmark)("TrCamera_SpectatorBookmark TribesGame.Default__TrCamera_SpectatorBookmark")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDescription;
			ScriptFunction mGetSpectatorName;
		}
		public @property static final
		{
			ScriptFunction GetDescription() { return mGetDescription ? mGetDescription : (mGetDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCamera_SpectatorBookmark.GetDescription")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCamera_SpectatorBookmark.GetSpectatorName")); }
		}
	}
	enum ESpectatorBookmark : ubyte
	{
		Bookmark_BEBase = 0,
		Bookmark_DSBase = 1,
		Bookmark_CTFBEGeneratorRoom = 2,
		Bookmark_CTFDSGeneratorRoom = 3,
		Bookmark_CTFBEMidfield = 4,
		Bookmark_CTFDSMidfield = 5,
		Bookmark_CTFMapOverhead = 6,
		Bookmark_CTFBEVehiclePad = 7,
		Bookmark_CTFDSVehiclePad = 8,
		Bookmark_CTFBESpawn = 9,
		Bookmark_CTFDSSpawn = 10,
		Bookmark_CTFBESensor = 11,
		Bookmark_CTFDSSensor = 12,
		Bookmark_CTFBETurretA = 13,
		Bookmark_CTFBETurretB = 14,
		Bookmark_CTFBETurretC = 15,
		Bookmark_CTFDSTurretA = 16,
		Bookmark_CTFDSTurretB = 17,
		Bookmark_CTFDSTurretC = 18,
		Bookmark_CTFBEBackRoute = 19,
		Bookmark_CTFDSBackRoute = 20,
		Bookmark_TDMEast = 21,
		Bookmark_TDMWest = 22,
		Bookmark_TDMNorth = 23,
		Bookmark_TDMSouth = 24,
		Bookmark_TDMCenter = 25,
		Bookmark_TDMMapOverhead = 26,
		Bookmark_DdDryHigh = 27,
		Bookmark_DdDryLow = 28,
		Bookmark_DdBEWide = 29,
		Bookmark_DdDSWide = 30,
		Bookmark_DdDockHigh = 31,
		Bookmark_DdDockLow = 32,
		Bookmark_DdBEBunker = 33,
		Bookmark_DdDSBunker = 34,
		Bookmark_DdBEBackEntrance = 35,
		Bookmark_DdDSBackEntrance = 36,
		Bookmark_DNFish = 37,
		Bookmark_XFBSW = 38,
		Bookmark_XFRSW = 39,
		Bookmark_XFBERed = 40,
		Bookmark_XFDSRed = 41,
		Bookmark_XFBEBlue = 42,
		Bookmark_XFDSBlue = 43,
		Bookmark_XFBEBackstop = 44,
		Bookmark_XFDSBackstop = 45,
		Bookmark_XFBECRoom = 46,
		Bookmark_XFDSCRoom = 47,
		Bookmark_NKTower = 48,
		Bookmark_NKTunnel = 49,
		Bookmark_NKWhalebones = 50,
		Bookmark_NKMountainView = 51,
		Bookmark_NKMountainSide = 52,
		Bookmark_BTBase = 53,
		Bookmark_BTBaseInterior = 54,
		Bookmark_BTTunnelEast = 55,
		Bookmark_BTTunnelWest = 56,
		Bookmark_GenericCamera = 57,
		Bookmark_MAX = 58,
	}
	@property final auto ref
	{
		TrCamera_SpectatorBookmark.ESpectatorBookmark m_BookmarkDescription() { return *cast(TrCamera_SpectatorBookmark.ESpectatorBookmark*)(cast(size_t)cast(void*)this + 1416); }
		ScriptString BEBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 720); }
		ScriptString GenericCamera() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
		ScriptString BTTunnelWest() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1392); }
		ScriptString BTTunnelEast() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1380); }
		ScriptString BTBaseInterior() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1368); }
		ScriptString BTBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1356); }
		ScriptString NKMountainSide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1344); }
		ScriptString NKMountainView() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1332); }
		ScriptString NKWhalebones() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1320); }
		ScriptString NKTunnel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1308); }
		ScriptString NKTower() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1296); }
		ScriptString XFDSCRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1284); }
		ScriptString XFBECRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1272); }
		ScriptString XFDSBackstop() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1260); }
		ScriptString XFBEBackstop() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1248); }
		ScriptString XFDSBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1236); }
		ScriptString XFBEBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1224); }
		ScriptString XFDSRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1212); }
		ScriptString XFBERed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1200); }
		ScriptString XFRSW() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1188); }
		ScriptString XFBSW() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1176); }
		ScriptString DNFish() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1164); }
		ScriptString DdDSBackEntrance() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1152); }
		ScriptString DdBEBackEntrance() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1140); }
		ScriptString DdDSBunker() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1128); }
		ScriptString DdBEBunker() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
		ScriptString DdDockLow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1104); }
		ScriptString DdDockHigh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1092); }
		ScriptString DdDSWide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1080); }
		ScriptString DdBEWide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
		ScriptString DdDryLow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
		ScriptString DdDryHigh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
		ScriptString TDMMapOverhead() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1032); }
		ScriptString TDMCenter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
		ScriptString TDMSouth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1008); }
		ScriptString TDMNorth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 996); }
		ScriptString TDMWest() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 984); }
		ScriptString TDMEast() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
		ScriptString CTFDSBackRoute() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 960); }
		ScriptString CTFBEBackRoute() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 948); }
		ScriptString CTFDSTurretC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 936); }
		ScriptString CTFDSTurretB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
		ScriptString CTFDSTurretA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 912); }
		ScriptString CTFBETurretC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 900); }
		ScriptString CTFBETurretB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 888); }
		ScriptString CTFBETurretA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
		ScriptString CTFDSSensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
		ScriptString CTFBESensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 852); }
		ScriptString CTFDSSpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 840); }
		ScriptString CTFBESpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
		ScriptString CTFDSVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
		ScriptString CTFBEVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
		ScriptString CTFDSMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 792); }
		ScriptString CTFBEMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 780); }
		ScriptString CTFMapOverhead() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 768); }
		ScriptString CTFDSGeneratorRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 756); }
		ScriptString CTFBEGeneratorRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 744); }
		ScriptString DSBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 732); }
	}
final:
	ScriptString GetDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
