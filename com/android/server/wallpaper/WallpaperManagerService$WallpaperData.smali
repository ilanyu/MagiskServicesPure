.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field allowBackup:Z

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field final cropFile:Ljava/io/File;

.field final cropHint:Landroid/graphics/Rect;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field primaryColors:Landroid/app/WallpaperColors;

.field setComplete:Landroid/app/IWallpaperManagerCallback;

.field themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field final wallpaperFile:Ljava/io/File;

.field wallpaperId:I

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field whichPending:I

.field width:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "inputFileName"    # Ljava/lang/String;
    .param p3, "cropFileName"    # Ljava/lang/String;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 926
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 929
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 930
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 935
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 937
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 940
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 941
    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    .line 942
    .local v0, "wallpaperDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 943
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 944
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 864
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method cropExists()Z
    .registers 2

    .line 948
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method sourceExists()Z
    .registers 2

    .line 952
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
