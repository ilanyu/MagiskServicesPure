.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$-zrxaVg2Hu5N6--4jvUZ0DkaLJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$-zrxaVg2Hu5N6--4jvUZ0DkaLJY;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$-zrxaVg2Hu5N6--4jvUZ0DkaLJY;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onServiceDisconnected$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    return-void
.end method
