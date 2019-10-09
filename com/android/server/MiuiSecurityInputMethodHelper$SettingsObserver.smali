.class Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityInputMethodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiSecurityInputMethodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiSecurityInputMethodHelper;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/MiuiSecurityInputMethodHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 78
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 104
    const-string v0, "enable_miui_security_ime"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "secIMEUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    # getter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;
    invoke-static {v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$000(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 106
    :try_start_f
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 107
    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    iget-object v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 108
    # getter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;
    invoke-static {v3}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$000(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_miui_security_ime"

    iget-object v5, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 109
    # getter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;
    invoke-static {v5}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$000(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 107
    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    # setter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z
    invoke-static {v2, v6}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$102(Lcom/android/server/MiuiSecurityInputMethodHelper;Z)Z

    .line 110
    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    # invokes: Lcom/android/server/MiuiSecurityInputMethodHelper;->updateFromSettingsLocked()V
    invoke-static {v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$200(Lcom/android/server/MiuiSecurityInputMethodHelper;)V

    .line 112
    const-string v2, "MiuiSecurityInputMethodHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable status change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    # getter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z
    invoke-static {v4}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$100(Lcom/android/server/MiuiSecurityInputMethodHelper;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5e
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_60

    throw v2
.end method

.method registerContentObserverLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 82
    sget-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-nez v0, :cond_5

    .line 83
    return-void

    .line 85
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_e

    .line 86
    return-void

    .line 88
    :cond_e
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    # getter for: Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;
    invoke-static {v0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->access$000(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 90
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    iput-boolean v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    .line 93
    :cond_24
    iget v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2a

    .line 94
    iput p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    .line 96
    :cond_2a
    const-string v1, "enable_miui_security_ime"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    .line 100
    return-void
.end method
