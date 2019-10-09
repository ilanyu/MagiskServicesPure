.class Lcom/android/server/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 843
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 844
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 837
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 845
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 874
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 876
    .local v0, "showImeUri":Landroid/net/Uri;
    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 878
    .local v1, "accessibilityRequestingNoImeUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 879
    :try_start_12
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 880
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    goto :goto_7c

    .line 881
    :cond_1e
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 882
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 883
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_soft_keyboard_mode"

    iget v6, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 882
    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    move v4, v5

    goto :goto_3d

    :cond_3c
    move v4, v7

    :goto_3d
    # setter for: Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService;->access$202(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 886
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_57

    .line 887
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 888
    .local v3, "showRequested":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5, v7, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 889
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v3, v4, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 890
    .end local v3    # "showRequested":Z
    goto :goto_7c

    :cond_57
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v3, :cond_7c

    .line 891
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_7c

    .line 894
    :cond_63
    const/4 v3, 0x0

    .line 895
    .local v3, "enabledChanged":Z
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, "newEnabled":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 897
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 898
    const/4 v3, 0x1

    .line 900
    :cond_77
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 902
    .end local v3    # "enabledChanged":Z
    .end local v4    # "newEnabled":Ljava/lang/String;
    :cond_7c
    :goto_7c
    monitor-exit v2

    .line 903
    return-void

    .line 902
    :catchall_7e
    move-exception v3

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_12 .. :try_end_80} :catchall_7e

    throw v3
.end method

.method public registerContentObserverLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 848
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_9

    .line 849
    return-void

    .line 851
    :cond_9
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 852
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 853
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 854
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 856
    :cond_23
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2d

    .line 857
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 858
    iput p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 860
    :cond_2d
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 862
    const-string v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 864
    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 866
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 868
    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 870
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 871
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
