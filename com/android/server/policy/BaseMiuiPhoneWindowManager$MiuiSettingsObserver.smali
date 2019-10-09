.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2103
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2104
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 2107
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2108
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2110
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2112
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2114
    const-string/jumbo v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2116
    const-string/jumbo v1, "volumekey_launch_camera"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2118
    const-string v1, "auto_test_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2120
    const-string/jumbo v1, "single_key_use_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2122
    const-string/jumbo v1, "key_bank_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2124
    const-string/jumbo v1, "key_trans_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2126
    const-string/jumbo v1, "key_long_press_volume_down"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2128
    const-string/jumbo v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2130
    const-string/jumbo v1, "screen_key_press_app_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2132
    const-string/jumbo v1, "vr_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2134
    const-string v1, "enable_mikey_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2136
    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2138
    const-string v1, "accessibility_shortcut_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2140
    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2142
    const-string v1, "accessibility_shortcut_on_lock_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2145
    const-string/jumbo v1, "long_press_power_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2147
    const-string v1, "double_click_power_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2149
    const-string/jumbo v1, "three_gesture_down"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2151
    const-string/jumbo v1, "long_press_home_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2153
    const-string/jumbo v1, "long_press_menu_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2155
    const-string/jumbo v1, "long_press_menu_key_when_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2157
    const-string/jumbo v1, "long_press_back_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2159
    const-string/jumbo v1, "key_combination_power_home"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2161
    const-string/jumbo v1, "key_combination_power_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2163
    const-string/jumbo v1, "key_combination_power_back"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2165
    const-string/jumbo v1, "long_press_power_launch_xiaoai"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2167
    const-string/jumbo v1, "send_back_when_xiaoai_appear"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2169
    const-string v1, "force_fsg_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2171
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_GAME_MODE:Z

    if-eqz v1, :cond_143

    .line 2172
    const-string v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2175
    :cond_143
    const-string/jumbo v1, "long_press_power_launch_xiaoai"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2176
    invoke-virtual {p0, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 2177
    return-void
.end method

.method public onChange(Z)V
    .registers 16
    .param p1, "selfChange"    # Z

    .line 2202
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2203
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2204
    :try_start_d
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$Key;->updateOldKeyFunctionToNew(Landroid/content/Context;)V

    .line 2206
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "long_press_power_key"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    .line 2208
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "double_click_power_key"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    .line 2210
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "long_press_home_key"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    .line 2212
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "long_press_menu_key"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    .line 2214
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_67

    .line 2215
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "long_press_menu_key_when_lock"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    goto :goto_6c

    .line 2218
    :cond_67
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    .line 2220
    :goto_6c
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "long_press_back_key"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    .line 2222
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_combination_power_home"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    .line 2224
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_combination_power_menu"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    .line 2226
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_combination_power_back"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    .line 2228
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v3, "screen_key_press_app_switch"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2230
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v4

    .line 2228
    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_bd

    move v3, v5

    goto :goto_be

    :cond_bd
    move v3, v4

    :goto_be
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 2232
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "three_gesture_down"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2234
    .local v2, "threeGestureDown":Ljava/lang/String;
    if-eqz v2, :cond_fe

    const-string/jumbo v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    goto :goto_fe

    .line 2241
    :cond_d8
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    if-eqz v3, :cond_eb

    const-string/jumbo v3, "none"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 2242
    :cond_eb
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v3, v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2244
    :cond_f6
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-virtual {v3, v2}, Lcom/miui/server/MiuiPointerEventListener;->setThreeGestureAction(Ljava/lang/String;)V

    goto :goto_11c

    .line 2236
    :cond_fe
    :goto_fe
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    if-eqz v3, :cond_11c

    const-string/jumbo v3, "none"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11c

    .line 2237
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v3, v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2246
    :cond_11c
    :goto_11c
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object v2, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    .line 2248
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    sget-boolean v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    if-nez v6, :cond_137

    const-string/jumbo v6, "volumekey_launch_camera"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2249
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    .line 2248
    invoke-static {v0, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_137

    move v6, v5

    goto :goto_138

    :cond_137
    move v6, v4

    :goto_138
    iput-boolean v6, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    .line 2250
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v6, "trackball_wake_screen"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2251
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    .line 2250
    invoke-static {v0, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_14d

    move v6, v5

    goto :goto_14e

    :cond_14d
    move v6, v4

    :goto_14e
    iput-boolean v6, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 2252
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "enable_mikey_mode"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2253
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    .line 2252
    invoke-static {v0, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_162

    move v6, v5

    goto :goto_163

    :cond_162
    move v6, v4

    :goto_163
    iput-boolean v6, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    .line 2254
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v6, "torch_state"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_172

    move v6, v5

    goto :goto_173

    :cond_172
    move v6, v4

    :goto_173
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v3, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 2256
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_18b

    .line 2257
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2259
    :cond_18b
    const-string v3, "camera_key_preferred_action_type"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2261
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v6

    .line 2259
    invoke-static {v0, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2262
    .local v3, "cameraKeyActionType":I
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-ne v5, v3, :cond_1ad

    const/4 v7, 0x4

    const-string v8, "camera_key_preferred_action_shortcut_id"

    const/4 v9, -0x1

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2264
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    .line 2263
    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v7, v8, :cond_1ad

    move v7, v5

    goto :goto_1ae

    :cond_1ad
    move v7, v4

    :goto_1ae
    iput-boolean v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 2265
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v7, "auto_test_mode_on"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1bc

    move v7, v5

    goto :goto_1bd

    :cond_1bc
    move v7, v4

    :goto_1bd
    iput-boolean v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    .line 2266
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "single_key_use_enable"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2267
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    .line 2266
    invoke-static {v0, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_1d2

    move v7, v5

    goto :goto_1d3

    :cond_1d2
    move v7, v4

    :goto_1d3
    iput-boolean v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    .line 2268
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v6, :cond_1e1

    .line 2269
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v6, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_1e6

    .line 2271
    :cond_1e1
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v6, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 2274
    :goto_1e6
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "send_back_when_xiaoai_appear"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2275
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    .line 2274
    invoke-static {v0, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1f9

    move v7, v5

    goto :goto_1fa

    :cond_1f9
    move v7, v4

    :goto_1fa
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z
    invoke-static {v6, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 2277
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "key_bank_card_in_ese"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2278
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    .line 2277
    invoke-static {v0, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_210

    move v7, v5

    goto :goto_211

    :cond_210
    move v7, v4

    :goto_211
    iput-boolean v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    .line 2279
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "key_trans_card_in_ese"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2280
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    .line 2279
    invoke-static {v0, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_226

    move v7, v5

    goto :goto_227

    :cond_226
    move v7, v4

    :goto_227
    iput-boolean v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    .line 2281
    const-string/jumbo v6, "key_long_press_volume_down"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2282
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    .line 2281
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2283
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_26d

    .line 2284
    const-string v7, "Street-snap"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_267

    const-string v7, "Street-snap-picture"

    .line 2285
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_267

    const-string v7, "Street-snap-movie"

    .line 2286
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_251

    goto :goto_267

    .line 2288
    :cond_251
    const-string/jumbo v7, "public_transportation_shortcuts"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_261

    .line 2289
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x2

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_27c

    .line 2291
    :cond_261
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_27c

    .line 2287
    :cond_267
    :goto_267
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v7, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_27c

    .line 2294
    :cond_26d
    const-string/jumbo v7, "key_long_press_volume_down"

    const-string/jumbo v8, "none"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2295
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    .line 2294
    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2297
    :goto_27c
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v8, "vr_mode"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v0, v8, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v5, :cond_28f

    move v8, v5

    goto :goto_290

    :cond_28f
    move v8, v4

    :goto_290
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z
    invoke-static {v7, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 2298
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "force_fsg_nav_bar"

    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    .line 2300
    .local v7, "supportFsg":Z
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    if-eq v7, v8, :cond_2b0

    .line 2301
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-boolean v7, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    .line 2302
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavigationBarWidth()V

    .line 2305
    :cond_2b0
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    move-result-object v8

    if-nez v8, :cond_2d2

    .line 2306
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v9, Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    iget-object v12, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2307
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2306
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    invoke-static {v8, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/provider/SettingsStringUtil$SettingStringHelper;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    .line 2309
    :cond_2d2
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v8

    .line 2310
    .local v8, "shortcutService":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2f0

    .line 2311
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3900()Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v8, v10}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_2f0

    move v10, v5

    goto :goto_2f1

    :cond_2f0
    move v10, v4

    :goto_2f1
    iput-boolean v10, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    .line 2313
    const-string v9, "accessibility_shortcut_enabled"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2314
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    .line 2313
    invoke-static {v0, v9, v5, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v5, :cond_303

    move v9, v5

    goto :goto_304

    :cond_303
    move v9, v4

    .line 2315
    .local v9, "accessibilityShortcutEnabled":Z
    :goto_304
    const-string v10, "accessibility_shortcut_target_service"

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2316
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    .line 2315
    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2317
    .local v10, "accessibilityShortcut":Ljava/lang/String;
    if-nez v10, :cond_31e

    .line 2318
    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v12, 0x1040138

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2320
    :cond_31e
    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-eqz v9, :cond_338

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_338

    .line 2321
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3900()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_338

    move v12, v5

    goto :goto_339

    :cond_338
    move v12, v4

    :goto_339
    iput-boolean v12, v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    .line 2322
    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v12, "accessibility_shortcut_on_lock_screen"

    iget-object v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2323
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v13

    .line 2322
    invoke-static {v0, v12, v4, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v5, :cond_34d

    move v4, v5

    nop

    :cond_34d
    iput-boolean v4, v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutOnLockScreen:Z

    .line 2324
    .end local v2    # "threeGestureDown":Ljava/lang/String;
    .end local v3    # "cameraKeyActionType":I
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "supportFsg":Z
    .end local v8    # "shortcutService":Ljava/lang/String;
    .end local v9    # "accessibilityShortcutEnabled":Z
    .end local v10    # "accessibilityShortcut":Ljava/lang/String;
    monitor-exit v1

    .line 2325
    return-void

    .line 2324
    :catchall_351
    move-exception v2

    monitor-exit v1
    :try_end_353
    .catchall {:try_start_d .. :try_end_353} :catchall_351

    throw v2
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2181
    const-string v0, "gb_boosting"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2182
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleGameModeChange()V
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    goto :goto_58

    .line 2183
    :cond_12
    const-string/jumbo v0, "long_press_power_launch_xiaoai"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2184
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_power_launch_xiaoai"

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2185
    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v2

    .line 2184
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v3

    :goto_3a
    move v0, v1

    .line 2187
    .local v0, "longPressPowerKeyLaunchXiaoai":Z
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_49

    .line 2189
    if-eqz v0, :cond_54

    .line 2190
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$Key;->setPowerKeyLaunchVoiceAssistant(Landroid/content/Context;)V

    goto :goto_54

    .line 2193
    :cond_49
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-eqz v0, :cond_51

    const-string/jumbo v2, "launch_google_search"

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    iput-object v2, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    .line 2195
    .end local v0    # "longPressPowerKeyLaunchXiaoai":Z
    :cond_54
    :goto_54
    goto :goto_58

    .line 2196
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2198
    :goto_58
    return-void
.end method
