.class Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AutoDisableScreenButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 317
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 318
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 319
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 327
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$300(Lcom/miui/server/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 330
    const-string v1, "auto_disable_screen_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 332
    const-string v1, "auto_disable_screen_button_cloud_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 335
    invoke-virtual {p0, v3}, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->onChange(Z)V

    .line 336
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 323
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->updateSettings()V
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$1000(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    .line 324
    return-void
.end method
