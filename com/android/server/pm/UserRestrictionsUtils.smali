.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 57

    .line 72
    const-string/jumbo v0, "no_config_wifi"

    const-string/jumbo v1, "no_config_locale"

    const-string/jumbo v2, "no_modify_accounts"

    const-string/jumbo v3, "no_install_apps"

    const-string/jumbo v4, "no_uninstall_apps"

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_config_bluetooth"

    const-string/jumbo v8, "no_bluetooth"

    const-string/jumbo v9, "no_bluetooth_sharing"

    const-string/jumbo v10, "no_usb_file_transfer"

    const-string/jumbo v11, "no_config_credentials"

    const-string/jumbo v12, "no_remove_user"

    const-string/jumbo v13, "no_remove_managed_profile"

    const-string/jumbo v14, "no_debugging_features"

    const-string/jumbo v15, "no_config_vpn"

    const-string/jumbo v16, "no_config_date_time"

    const-string/jumbo v17, "no_config_tethering"

    const-string/jumbo v18, "no_network_reset"

    const-string/jumbo v19, "no_factory_reset"

    const-string/jumbo v20, "no_add_user"

    const-string/jumbo v21, "no_add_managed_profile"

    const-string v22, "ensure_verify_apps"

    const-string/jumbo v23, "no_config_cell_broadcasts"

    const-string/jumbo v24, "no_config_mobile_networks"

    const-string/jumbo v25, "no_control_apps"

    const-string/jumbo v26, "no_physical_media"

    const-string/jumbo v27, "no_unmute_microphone"

    const-string/jumbo v28, "no_adjust_volume"

    const-string/jumbo v29, "no_outgoing_calls"

    const-string/jumbo v30, "no_sms"

    const-string/jumbo v31, "no_fun"

    const-string/jumbo v32, "no_create_windows"

    const-string/jumbo v33, "no_system_error_dialogs"

    const-string/jumbo v34, "no_cross_profile_copy_paste"

    const-string/jumbo v35, "no_outgoing_beam"

    const-string/jumbo v36, "no_wallpaper"

    const-string/jumbo v37, "no_safe_boot"

    const-string v38, "allow_parent_profile_app_linking"

    const-string/jumbo v39, "no_record_audio"

    const-string/jumbo v40, "no_camera"

    const-string/jumbo v41, "no_run_in_background"

    const-string/jumbo v42, "no_data_roaming"

    const-string/jumbo v43, "no_set_user_icon"

    const-string/jumbo v44, "no_set_wallpaper"

    const-string/jumbo v45, "no_oem_unlock"

    const-string v46, "disallow_unmute_device"

    const-string/jumbo v47, "no_autofill"

    const-string/jumbo v48, "no_user_switch"

    const-string/jumbo v49, "no_unified_password"

    const-string/jumbo v50, "no_config_location"

    const-string/jumbo v51, "no_airplane_mode"

    const-string/jumbo v52, "no_config_brightness"

    const-string/jumbo v53, "no_sharing_into_profile"

    const-string/jumbo v54, "no_ambient_display"

    const-string/jumbo v55, "no_config_screen_timeout"

    const-string/jumbo v56, "no_printing"

    filled-new-array/range {v0 .. v56}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 135
    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 143
    const-string/jumbo v1, "no_bluetooth"

    const-string/jumbo v2, "no_usb_file_transfer"

    const-string/jumbo v3, "no_config_tethering"

    const-string/jumbo v4, "no_network_reset"

    const-string/jumbo v5, "no_factory_reset"

    const-string/jumbo v6, "no_add_user"

    const-string/jumbo v7, "no_config_cell_broadcasts"

    const-string/jumbo v8, "no_config_mobile_networks"

    const-string/jumbo v9, "no_physical_media"

    const-string/jumbo v10, "no_sms"

    const-string/jumbo v11, "no_fun"

    const-string/jumbo v12, "no_safe_boot"

    const-string/jumbo v13, "no_create_windows"

    const-string/jumbo v14, "no_data_roaming"

    const-string/jumbo v15, "no_airplane_mode"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 164
    const-string/jumbo v0, "no_user_switch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 171
    const-string/jumbo v0, "no_record_audio"

    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 181
    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string v7, "disallow_unmute_device"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 194
    const-string/jumbo v0, "no_add_managed_profile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    .line 205
    const-string/jumbo v0, "no_bluetooth_sharing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 212
    const-string v0, "ensure_verify_apps"

    const-string/jumbo v1, "no_airplane_mode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 464
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 466
    .local v1, "id":J
    const/4 v3, -0x1

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_1b4

    goto/16 :goto_82

    :sswitch_14
    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x2

    goto :goto_82

    :sswitch_1f
    const-string/jumbo v4, "no_safe_boot"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x6

    goto :goto_82

    :sswitch_2a
    const-string/jumbo v4, "no_share_location"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    move v3, v5

    goto :goto_82

    :sswitch_35
    const-string/jumbo v4, "no_data_roaming"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    move v3, v6

    goto :goto_82

    :sswitch_40
    const-string/jumbo v4, "no_config_location"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/16 v3, 0x9

    goto :goto_82

    :sswitch_4c
    const-string/jumbo v4, "no_run_in_background"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x5

    goto :goto_82

    :sswitch_57
    const-string/jumbo v4, "no_install_unknown_sources"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x4

    goto :goto_82

    :sswitch_62
    const-string/jumbo v4, "no_airplane_mode"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x7

    goto :goto_82

    :sswitch_6d
    const-string v4, "ensure_verify_apps"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v3, 0x3

    goto :goto_82

    :sswitch_77
    const-string/jumbo v4, "no_ambient_display"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/16 v3, 0x8

    :cond_82
    :goto_82
    packed-switch v3, :pswitch_data_1de

    goto/16 :goto_1a9

    .line 589
    :pswitch_87
    if-eqz p3, :cond_1a9

    .line 590
    nop

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_global_kill_switch"

    const-string v5, "0"

    .line 590
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1a9

    .line 568
    :pswitch_98
    if-eqz p3, :cond_1a9

    .line 569
    nop

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_enabled"

    .line 569
    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 572
    nop

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_always_on"

    .line 572
    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 575
    nop

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_pulse_on_pick_up"

    .line 575
    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 578
    nop

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_pulse_on_long_press"

    .line 578
    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 581
    nop

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_pulse_on_double_tap"

    .line 581
    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1a9

    .line 552
    :pswitch_ce
    if-eqz p3, :cond_1a9

    .line 553
    nop

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    .line 553
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_de

    goto :goto_df

    :cond_de
    move v5, v6

    :goto_df
    move v3, v5

    .line 556
    .local v3, "airplaneMode":Z
    if-eqz v3, :cond_fe

    .line 557
    nop

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    .line 557
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 565
    .end local v3    # "airplaneMode":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_fe
    goto/16 :goto_1a9

    .line 546
    :pswitch_100
    nop

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "safe_boot_disallowed"

    .line 549
    nop

    .line 546
    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    goto/16 :goto_1a9

    .line 529
    :pswitch_10e
    if-eqz p3, :cond_1a9

    .line 530
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_114
    .catchall {:try_start_9 .. :try_end_114} :catchall_1ae

    .line 531
    .local v3, "currentUser":I
    if-eq v3, p1, :cond_127

    if-eqz p1, :cond_127

    .line 533
    :try_start_118
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v6, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_120} :catch_121
    .catchall {:try_start_118 .. :try_end_120} :catchall_1ae

    .line 536
    goto :goto_127

    .line 534
    :catch_121
    move-exception v4

    .line 535
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_122
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 538
    .end local v3    # "currentUser":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_127
    :goto_127
    goto/16 :goto_1a9

    .line 524
    :pswitch_129
    const-string v3, "install_non_market_apps"

    .line 526
    nop

    .line 524
    xor-int/lit8 v4, p3, 0x1

    invoke-static {v0, v3, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 527
    goto/16 :goto_1a9

    .line 509
    :pswitch_133
    if-eqz p3, :cond_1a9

    .line 510
    nop

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const-string v5, "1"

    .line 510
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 514
    nop

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "verifier_verify_adb_installs"

    const-string v5, "1"

    .line 514
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1a9

    .line 498
    :pswitch_150
    if-eqz p3, :cond_1a9

    .line 501
    if-nez p1, :cond_1a9

    .line 502
    const-string v3, "adb_enabled"

    const-string v4, "0"

    invoke-static {v0, v3, v4, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1a9

    .line 490
    :pswitch_15c
    if-eqz p3, :cond_1a9

    .line 491
    const-string/jumbo v3, "location_mode"

    invoke-static {v0, v3, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1a9

    .line 468
    :pswitch_165
    if-eqz p3, :cond_1a9

    .line 472
    const-class v3, Landroid/telephony/SubscriptionManager;

    .line 473
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 474
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 475
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 476
    .local v4, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1a1

    .line 477
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 478
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_roaming"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    .line 478
    invoke-static {v0, v7, v8, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 481
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_17a

    .line 485
    :cond_1a1
    const-string v5, "data_roaming"

    const-string v6, "0"

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1a8
    .catchall {:try_start_122 .. :try_end_1a8} :catchall_1ae

    .line 487
    .end local v3    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    nop

    .line 597
    :cond_1a9
    :goto_1a9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    nop

    .line 599
    return-void

    .line 597
    :catchall_1ae
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    nop

    :sswitch_data_1b4
    .sparse-switch
        -0x57f0a463 -> :sswitch_77
        -0x4e6d1409 -> :sswitch_6d
        -0x4080af8e -> :sswitch_62
        0x171409a1 -> :sswitch_57
        0x2afb8ad6 -> :sswitch_4c
        0x339f9994 -> :sswitch_40
        0x375d2642 -> :sswitch_35
        0x3b5af253 -> :sswitch_2a
        0x414d6f66 -> :sswitch_1f
        0x68f319ac -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_165
        :pswitch_15c
        :pswitch_150
        :pswitch_133
        :pswitch_129
        :pswitch_10e
        :pswitch_100
        :pswitch_ce
        :pswitch_98
        :pswitch_87
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 431
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 433
    .local v2, "newValue":Z
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 435
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_1f

    .line 436
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 438
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_1f
    goto :goto_6

    .line 439
    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 401
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 402
    return v0

    .line 404
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 405
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 407
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 408
    return v2

    .line 410
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 411
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_36

    .line 412
    return v2

    .line 414
    .end local v3    # "key":Ljava/lang/String;
    :cond_36
    goto :goto_1f

    .line 415
    :cond_37
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_56

    .line 417
    return v2

    .line 419
    .end local v3    # "key":Ljava/lang/String;
    :cond_56
    goto :goto_3f

    .line 420
    :cond_57
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 337
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 338
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1a

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 340
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 337
    :goto_1d
    return v0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 293
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_d
    return-object v0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "restriction"    # Ljava/lang/String;

    .line 282
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .line 756
    const/4 v0, 0x1

    .line 757
    .local v0, "noneSet":Z
    if-eqz p2, :cond_4a

    .line 758
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    .line 763
    .end local v2    # "key":Ljava/lang/String;
    :cond_31
    goto :goto_b

    .line 764
    :cond_32
    if-eqz v0, :cond_5f

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 768
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    :cond_5f
    :goto_5f
    return-void
.end method

.method public static getDefaultEnabledForDeviceOwner()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 274
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isGlobal(ZLjava/lang/String;)Z
    .registers 3
    .param p0, "isDeviceOwner"    # Z
    .param p1, "key"    # Ljava/lang/String;

    .line 390
    if-eqz p0, :cond_12

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 391
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_12
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 392
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 393
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 390
    :goto_26
    return v0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 603
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 606
    .local v0, "mUserManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 607
    .local v1, "checkAllUser":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_230

    goto/16 :goto_118

    :sswitch_17
    const-string/jumbo v2, "screen_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x11

    goto/16 :goto_119

    :sswitch_24
    const-string v2, "install_non_market_apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x2

    goto/16 :goto_119

    :sswitch_2f
    const-string v2, "auto_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x13

    goto/16 :goto_119

    :sswitch_3b
    const-string v2, "always_on_vpn_lockdown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x8

    goto/16 :goto_119

    :sswitch_47
    const-string v2, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xd

    goto/16 :goto_119

    :sswitch_53
    const-string/jumbo v2, "location_global_kill_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x10

    goto/16 :goto_119

    :sswitch_60
    const-string v2, "auto_time_zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x14

    goto/16 :goto_119

    :sswitch_6c
    const-string v2, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xf

    goto/16 :goto_119

    :sswitch_78
    const-string v2, "airplane_mode_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xa

    goto/16 :goto_119

    :sswitch_84
    const-string/jumbo v2, "package_verifier_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x4

    goto/16 :goto_119

    :sswitch_90
    const-string/jumbo v2, "screen_off_timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x15

    goto/16 :goto_119

    :sswitch_9d
    const-string/jumbo v2, "safe_boot_disallowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x9

    goto/16 :goto_119

    :sswitch_aa
    const-string v2, "doze_pulse_on_long_press"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xe

    goto/16 :goto_119

    :sswitch_b6
    const-string v2, "doze_always_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xc

    goto :goto_119

    :sswitch_c1
    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x6

    goto :goto_119

    :sswitch_cc
    const-string v2, "always_on_vpn_app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x7

    goto :goto_119

    :sswitch_d6
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x12

    goto :goto_119

    :sswitch_e2
    const-string v2, "adb_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x3

    goto :goto_119

    :sswitch_ec
    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x5

    goto :goto_119

    :sswitch_f7
    const-string v2, "doze_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0xb

    goto :goto_119

    :sswitch_102
    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    move v2, v3

    goto :goto_119

    :sswitch_10d
    const-string/jumbo v2, "location_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    move v2, v4

    goto :goto_119

    :cond_118
    :goto_118
    const/4 v2, -0x1

    :goto_119
    const/16 v5, 0x3e8

    packed-switch v2, :pswitch_data_28a

    .line 738
    const-string v2, "data_roaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 739
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_218

    .line 740
    return v4

    .line 731
    :pswitch_12f
    if-ne p4, v5, :cond_132

    .line 732
    return v4

    .line 734
    :cond_132
    const-string/jumbo v2, "no_config_screen_timeout"

    .line 735
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 724
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_137
    if-ne p4, v5, :cond_13a

    .line 725
    return v4

    .line 727
    :cond_13a
    const-string/jumbo v2, "no_config_date_time"

    .line 728
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 713
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_13f
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 714
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_158

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v6

    if-eqz v6, :cond_158

    const-string v6, "0"

    .line 715
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    .line 716
    return v3

    .line 717
    :cond_158
    if-ne p4, v5, :cond_15b

    .line 718
    return v4

    .line 720
    :cond_15b
    const-string/jumbo v3, "no_config_date_time"

    .line 721
    .local v3, "restriction":Ljava/lang/String;
    goto :goto_1ad

    .line 706
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "restriction":Ljava/lang/String;
    :pswitch_15f
    if-ne p4, v5, :cond_162

    .line 707
    return v4

    .line 709
    :cond_162
    const-string/jumbo v2, "no_config_brightness"

    .line 710
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 697
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_167
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 698
    return v4

    .line 700
    :cond_170
    const-string/jumbo v2, "no_config_location"

    .line 701
    .restart local v2    # "restriction":Ljava/lang/String;
    const/4 v1, 0x1

    .line 702
    goto/16 :goto_21c

    .line 690
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_176
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 691
    return v4

    .line 693
    :cond_17f
    const-string/jumbo v2, "no_ambient_display"

    .line 694
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 679
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_184
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 680
    return v4

    .line 682
    :cond_18d
    const-string/jumbo v2, "no_airplane_mode"

    .line 683
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 672
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_192
    const-string v2, "1"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 673
    return v4

    .line 675
    :cond_19b
    const-string/jumbo v2, "no_safe_boot"

    .line 676
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_21c

    .line 664
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1a0
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 665
    .local v2, "appId":I
    if-eq v2, v5, :cond_1af

    if-nez v2, :cond_1a9

    goto :goto_1af

    .line 668
    :cond_1a9
    const-string/jumbo v3, "no_config_vpn"

    .line 669
    .restart local v3    # "restriction":Ljava/lang/String;
    nop

    .line 745
    .end local v3    # "restriction":Ljava/lang/String;
    .local v2, "restriction":Ljava/lang/String;
    :goto_1ad
    move-object v2, v3

    goto :goto_21c

    .line 666
    .local v2, "appId":I
    :cond_1af
    :goto_1af
    return v4

    .line 658
    .end local v2    # "appId":I
    :pswitch_1b0
    const-string/jumbo v2, "no_config_mobile_networks"

    .line 659
    .local v2, "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 651
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1b4
    const-string v2, "1"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 652
    return v4

    .line 654
    :cond_1bd
    const-string v2, "ensure_verify_apps"

    .line 655
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 643
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1c0
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 644
    return v4

    .line 646
    :cond_1c9
    const-string/jumbo v2, "no_debugging_features"

    .line 647
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 636
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1cd
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 637
    return v4

    .line 639
    :cond_1d6
    const-string/jumbo v2, "no_install_unknown_sources"

    .line 640
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 623
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1da
    const-string/jumbo v2, "no_config_location"

    .line 624
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 623
    invoke-virtual {v0, v2, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    if-eq p4, v5, :cond_1ea

    .line 626
    return v3

    .line 627
    :cond_1ea
    if-eqz p3, :cond_1f5

    const-string v2, "-"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f5

    .line 630
    return v4

    .line 632
    :cond_1f5
    const-string/jumbo v2, "no_share_location"

    .line 633
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 609
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1f9
    const-string/jumbo v2, "no_config_location"

    .line 610
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 609
    invoke-virtual {v0, v2, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_209

    if-eq p4, v5, :cond_209

    .line 612
    return v3

    .line 613
    :cond_209
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_214

    .line 617
    return v4

    .line 619
    :cond_214
    const-string/jumbo v2, "no_share_location"

    .line 620
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_21c

    .line 742
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_218
    const-string/jumbo v2, "no_data_roaming"

    .line 743
    .restart local v2    # "restriction":Ljava/lang/String;
    nop

    .line 745
    :goto_21c
    nop

    .line 748
    if-eqz v1, :cond_224

    .line 749
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 751
    :cond_224
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 745
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_22d
    return v4

    nop

    nop

    :sswitch_data_230
    .sparse-switch
        -0x6b192413 -> :sswitch_10d
        -0x596f7aff -> :sswitch_102
        -0x58d2ff08 -> :sswitch_f7
        -0x4280630b -> :sswitch_ec
        -0x39d6645f -> :sswitch_e2
        -0x294f7102 -> :sswitch_d6
        -0x252f8dda -> :sswitch_cc
        -0x18d5c3ee -> :sswitch_c1
        -0x611a9fa -> :sswitch_b6
        -0x1efffcf -> :sswitch_aa
        0x3756c15 -> :sswitch_9d
        0xf689f3e -> :sswitch_90
        0x2af40513 -> :sswitch_84
        0x3733860e -> :sswitch_78
        0x3ff919a6 -> :sswitch_6c
        0x4c070b4e -> :sswitch_60
        0x4df27163 -> :sswitch_53
        0x5f8b91a8 -> :sswitch_47
        0x62299f68 -> :sswitch_3b
        0x6305635d -> :sswitch_2f
        0x6565577f -> :sswitch_24
        0x67748604 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_1f9
        :pswitch_1da
        :pswitch_1cd
        :pswitch_1c0
        :pswitch_1b4
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_192
        :pswitch_184
        :pswitch_176
        :pswitch_176
        :pswitch_176
        :pswitch_176
        :pswitch_176
        :pswitch_167
        :pswitch_15f
        :pswitch_15f
        :pswitch_13f
        :pswitch_137
        :pswitch_12f
    .end packed-switch
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 4
    .param p0, "restriction"    # Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 222
    const-string v0, "UserRestrictionsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    .line 297
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 299
    if-nez p1, :cond_10

    .line 300
    return-void

    .line 302
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 304
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    .end local v3    # "key":Ljava/lang/String;
    :cond_2d
    goto :goto_18

    .line 307
    :cond_2e
    return-void
.end method

.method public static mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 314
    .local p0, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 315
    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 319
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 321
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 9
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "srcRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .local p2, "destRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 778
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 779
    .local v1, "key":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 780
    .local v2, "from":Landroid/os/Bundle;
    invoke-static {v2, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    .line 781
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 783
    .local v3, "to":Landroid/os/Bundle;
    if-nez v3, :cond_2c

    .line 784
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 785
    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 787
    :cond_2c
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 789
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 790
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 791
    add-int/lit8 v0, v0, -0x1

    .line 777
    .end local v1    # "key":I
    .end local v2    # "from":Landroid/os/Bundle;
    .end local v3    # "to":Landroid/os/Bundle;
    :cond_3a
    add-int/2addr v0, v4

    goto :goto_1

    .line 795
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 68
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 69
    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 270
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_9
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "result":Landroid/os/Bundle;
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 263
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 251
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 252
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 255
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_23
    goto :goto_9

    .line 258
    :cond_24
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "oldRestrictions"    # Landroid/os/Bundle;
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "restrictions"    # [Ljava/lang/String;

    .line 805
    array-length v0, p2

    if-nez v0, :cond_8

    .line 806
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 808
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 809
    .local v3, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 810
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v4, v5, :cond_1b

    .line 811
    const/4 v0, 0x1

    return v0

    .line 808
    .end local v3    # "restriction":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 814
    :cond_1e
    return v1
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "isDeviceOwner"    # Z
    .param p2, "cameraRestrictionScope"    # I
    .param p3, "global"    # Landroid/os/Bundle;
    .param p4, "local"    # Landroid/os/Bundle;

    .line 366
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    .line 367
    const-string/jumbo v1, "no_camera"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_13

    .line 368
    :cond_b
    if-ne p2, v0, :cond_13

    .line 369
    const-string/jumbo v1, "no_camera"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    :cond_13
    :goto_13
    if-eqz p0, :cond_46

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_46

    .line 374
    :cond_1c
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 376
    goto :goto_24

    .line 378
    :cond_37
    invoke-static {p1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 379
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_44

    .line 381
    :cond_41
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    .end local v2    # "key":Ljava/lang/String;
    :goto_44
    goto :goto_24

    .line 384
    :cond_45
    return-void

    .line 372
    :cond_46
    :goto_46
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    if-nez p1, :cond_3

    .line 231
    return-void

    .line 234
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 237
    goto :goto_f

    .line 239
    :cond_24
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 240
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 241
    const-string/jumbo v3, "true"

    invoke-interface {p0, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 245
    :cond_39
    const-string v3, "UserRestrictionsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown user restriction detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_f

    .line 247
    :cond_50
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    return-void
.end method
