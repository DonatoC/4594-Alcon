  	
  	export prototype int InstallFont( string, string); 
  	prototype INT GDI32.AddFontResource(BYREF STRING); 
  	 
	STRING szResult, szFontFile,szFontDir, szFontBackup, szFontName, szFontDesc;
	STRING szKey, szInfo,szValue;
	NUMBER nResult, nvType, nvSize,nvResult;
	
	#define HWND_BROADCAST 0xFFFF
	#define WM_FONTCHANGE 0x001D
	
	