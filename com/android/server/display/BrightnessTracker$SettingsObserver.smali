.class final Lcom/android/server/display/BrightnessTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 812
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 813
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 814
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 821
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$600(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$500(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 822
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    .line 824
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 826
    :goto_2f
    return-void
.end method
