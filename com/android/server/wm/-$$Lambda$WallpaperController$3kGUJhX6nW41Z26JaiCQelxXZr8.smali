.class public final synthetic Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;->f$0:Lcom/android/server/wm/WallpaperController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;->f$0:Lcom/android/server/wm/WallpaperController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$getTopVisibleWallpaper$2(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
