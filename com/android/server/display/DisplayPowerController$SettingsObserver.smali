.class final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1933
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 1934
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1935
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1939
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 1941
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)V

    .line 1942
    return-void
.end method
