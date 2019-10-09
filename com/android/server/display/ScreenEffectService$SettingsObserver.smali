.class Lcom/android/server/display/ScreenEffectService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 453
    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 454
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 458
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_1a8

    goto/16 :goto_81

    :sswitch_11
    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    move v1, v5

    goto/16 :goto_82

    :sswitch_1d
    const-string/jumbo v1, "screen_optimize_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    move v1, v3

    goto :goto_82

    :sswitch_28
    const-string v1, "drive_mode_drive_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/16 v1, 0x8

    goto :goto_82

    :sswitch_33
    const-string/jumbo v1, "screen_color_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x3

    goto :goto_82

    :sswitch_3e
    const-string/jumbo v1, "screen_monochrome_mode_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x4

    goto :goto_82

    :sswitch_49
    const-string/jumbo v1, "screen_monochrome_mode_white_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x6

    goto :goto_82

    :sswitch_54
    const-string/jumbo v1, "screen_game_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/16 v1, 0x9

    goto :goto_82

    :sswitch_60
    const-string/jumbo v1, "screen_monochrome_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x5

    goto :goto_82

    :sswitch_6b
    const-string/jumbo v1, "screen_paper_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    move v1, v4

    goto :goto_82

    :sswitch_76
    const-string/jumbo v1, "night_light_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x7

    goto :goto_82

    :cond_81
    :goto_81
    move v1, v2

    :goto_82
    const/4 v6, -0x2

    packed-switch v1, :pswitch_data_1d2

    goto/16 :goto_1a6

    .line 525
    :pswitch_88
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateGameMode()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$2000(Lcom/android/server/display/ScreenEffectService;)V

    goto/16 :goto_1a6

    .line 521
    :pswitch_8f
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drive_mode_drive_mode"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mDriveMode:I
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$1902(Lcom/android/server/display/ScreenEffectService;I)I

    .line 523
    goto/16 :goto_1a6

    .line 514
    :pswitch_a6
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "night_light_level"

    invoke-static {v1, v3, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 516
    .local v1, "value":I
    sget-object v2, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v2, :cond_1a6

    .line 517
    sget-object v2, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/ScreenEffectService$LocalService;->setNightLight(I)V

    goto/16 :goto_1a6

    .line 510
    .end local v1    # "value":I
    :pswitch_c2
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "screen_monochrome_mode_white_list"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$1802(Lcom/android/server/display/ScreenEffectService;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 512
    goto/16 :goto_1a6

    .line 503
    :pswitch_d6
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 504
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_monochrome_mode"

    .line 503
    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$1702(Lcom/android/server/display/ScreenEffectService;I)I

    .line 507
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$1600(Lcom/android/server/display/ScreenEffectService;)V

    .line 508
    goto/16 :goto_1a6

    .line 495
    :pswitch_f3
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 496
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_monochrome_mode_enabled"

    .line 495
    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_109

    goto :goto_10a

    :cond_109
    move v4, v5

    :goto_10a
    # setter for: Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z
    invoke-static {v1, v4}, Lcom/android/server/display/ScreenEffectService;->access$1502(Lcom/android/server/display/ScreenEffectService;Z)Z

    .line 500
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$1600(Lcom/android/server/display/ScreenEffectService;)V

    .line 501
    goto/16 :goto_1a6

    .line 484
    :pswitch_114
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 485
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_color_level"

    .line 484
    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$1202(Lcom/android/server/display/ScreenEffectService;I)I

    .line 488
    # getter for: Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_136

    .line 489
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateUnlimitedColorLevel()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$1400(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_1a6

    .line 491
    :cond_136
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$1100(Lcom/android/server/display/ScreenEffectService;)V

    .line 493
    goto :goto_1a6

    .line 477
    :pswitch_13c
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 478
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_optimize_mode"

    sget v4, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    .line 477
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$1002(Lcom/android/server/display/ScreenEffectService;I)I

    .line 481
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$1100(Lcom/android/server/display/ScreenEffectService;)V

    .line 482
    goto :goto_1a6

    .line 469
    :pswitch_15a
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_paper_mode_level"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I
    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$902(Lcom/android/server/display/ScreenEffectService;I)I

    .line 472
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$400(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 473
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updatePaperMode(ZZ)V
    invoke-static {v1, v4, v4}, Lcom/android/server/display/ScreenEffectService;->access$800(Lcom/android/server/display/ScreenEffectService;ZZ)V

    goto :goto_1a6

    .line 461
    :pswitch_180
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 462
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_paper_mode_enabled"

    .line 461
    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_196

    goto :goto_197

    :cond_196
    move v4, v5

    :goto_197
    # setter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z
    invoke-static {v1, v4}, Lcom/android/server/display/ScreenEffectService;->access$402(Lcom/android/server/display/ScreenEffectService;Z)Z

    .line 466
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$400(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v2

    # invokes: Lcom/android/server/display/ScreenEffectService;->updatePaperMode(ZZ)V
    invoke-static {v1, v2, v5}, Lcom/android/server/display/ScreenEffectService;->access$800(Lcom/android/server/display/ScreenEffectService;ZZ)V

    .line 467
    nop

    .line 528
    :cond_1a6
    :goto_1a6
    return-void

    nop

    :sswitch_data_1a8
    .sparse-switch
        -0x7c53168c -> :sswitch_76
        -0x6076b212 -> :sswitch_6b
        -0x5db37c4e -> :sswitch_60
        -0x56e48e43 -> :sswitch_54
        -0x3863425f -> :sswitch_49
        -0x20b21c4c -> :sswitch_3e
        0x2807b455 -> :sswitch_33
        0x593d229f -> :sswitch_28
        0x74fb4732 -> :sswitch_1d
        0x7e544b2b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_180
        :pswitch_15a
        :pswitch_13c
        :pswitch_114
        :pswitch_f3
        :pswitch_d6
        :pswitch_c2
        :pswitch_a6
        :pswitch_8f
        :pswitch_88
    .end packed-switch
.end method
