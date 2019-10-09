.class Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 350
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 351
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->onThemeSettingsChanged()V

    .line 368
    return-void
.end method

.method public startObserving(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_mode"

    .line 356
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 359
    return-void
.end method

.method public stopObserving(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 363
    return-void
.end method
