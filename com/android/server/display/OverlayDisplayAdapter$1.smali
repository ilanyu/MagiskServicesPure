.class Lcom/android/server/display/OverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OverlayDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 113
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    .line 117
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$1$1;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 118
    invoke-virtual {v3}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V

    .line 116
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # invokes: Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V

    .line 126
    return-void
.end method
