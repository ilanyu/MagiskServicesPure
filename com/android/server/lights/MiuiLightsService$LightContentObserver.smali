.class Lcom/android/server/lights/MiuiLightsService$LightContentObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightContentObserver"
.end annotation


# instance fields
.field public final BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final LIGHT_TURN_ON_ENDTIME_URI:Landroid/net/Uri;

.field public final LIGHT_TURN_ON_STARTTIME_URI:Landroid/net/Uri;

.field public final LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final MUSIC_LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final NOTIFICATION_LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

.field public final SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 736
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->access$2600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 722
    const-string/jumbo p1, "screen_buttons_state"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    .line 723
    const-string/jumbo p1, "single_key_use_enable"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    .line 724
    const-string/jumbo p1, "screen_buttons_turn_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    .line 725
    const-string p1, "breathing_light_color"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 726
    const-string p1, "call_breathing_light_color"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 727
    const-string/jumbo p1, "mms_breathing_light_color"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 728
    const-string p1, "battery_light_turn_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    .line 729
    const-string/jumbo p1, "notification_light_turn_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->NOTIFICATION_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    .line 730
    const-string/jumbo p1, "light_turn_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_URI:Landroid/net/Uri;

    .line 731
    const-string/jumbo p1, "light_turn_on_startTime"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_STARTTIME_URI:Landroid/net/Uri;

    .line 732
    const-string/jumbo p1, "light_turn_on_endTime"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_ENDTIME_URI:Landroid/net/Uri;

    .line 733
    const-string/jumbo p1, "music_light_turn_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MUSIC_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    .line 737
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 5

    .line 740
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$4400(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_33

    .line 741
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 743
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$4700(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 744
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 747
    :cond_28
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 751
    :cond_33
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$4500(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 752
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 754
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 756
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 758
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 760
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->NOTIFICATION_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 762
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 764
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MUSIC_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 766
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_STARTTIME_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 768
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_ENDTIME_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 771
    :cond_9f
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 14
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    .line 776
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_1c4

    .line 779
    :cond_1b
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_1b2

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 780
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b2

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 781
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_1b2

    .line 784
    :cond_36
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 785
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 786
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    goto/16 :goto_1d1

    .line 787
    :cond_4d
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->NOTIFICATION_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 788
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 789
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    goto/16 :goto_1d1

    .line 790
    :cond_63
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 791
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4800(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 792
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->registerAudioPlaybackCallback()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4900(Lcom/android/server/lights/MiuiLightsService;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3700(Lcom/android/server/lights/MiuiLightsService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 794
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1700(Lcom/android/server/lights/MiuiLightsService;)V

    .line 795
    invoke-static {}, Lcom/android/server/lights/VisualizerHolder;->getInstance()Lcom/android/server/lights/VisualizerHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$3500(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/VisualizerHolder;->setOnDataCaptureListener(Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V

    goto :goto_a9

    .line 798
    :cond_9f
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 799
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->unregisterAudioPlaybackCallback()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5000(Lcom/android/server/lights/MiuiLightsService;)V

    .line 801
    :cond_a9
    :goto_a9
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateLightState()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5100(Lcom/android/server/lights/MiuiLightsService;)V

    goto/16 :goto_1d1

    .line 802
    :cond_b0
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MUSIC_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 803
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3600(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 804
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 805
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 806
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->unregisterAudioPlaybackCallback()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5000(Lcom/android/server/lights/MiuiLightsService;)V

    goto/16 :goto_1d1

    .line 807
    :cond_d5
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4800(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 808
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->registerAudioPlaybackCallback()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4900(Lcom/android/server/lights/MiuiLightsService;)V

    .line 809
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3700(Lcom/android/server/lights/MiuiLightsService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 810
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1700(Lcom/android/server/lights/MiuiLightsService;)V

    .line 811
    invoke-static {}, Lcom/android/server/lights/VisualizerHolder;->getInstance()Lcom/android/server/lights/VisualizerHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$3500(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/VisualizerHolder;->setOnDataCaptureListener(Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V

    goto/16 :goto_1d1

    .line 814
    :cond_10a
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_STARTTIME_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0x5265c00

    const-wide/16 v4, 0x0

    const/4 v6, -0x2

    if-eqz v1, :cond_161

    .line 815
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v7, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "light_turn_on_startTime"

    const-wide/32 v9, 0x1808580

    invoke-static {v7, v8, v9, v10, v6}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v6

    # setter for: Lcom/android/server/lights/MiuiLightsService;->light_start_time:J
    invoke-static {v1, v6, v7}, Lcom/android/server/lights/MiuiLightsService;->access$5202(Lcom/android/server/lights/MiuiLightsService;J)J

    .line 819
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->light_start_time:J
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5200(Lcom/android/server/lights/MiuiLightsService;)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_141

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->light_start_time:J
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5200(Lcom/android/server/lights/MiuiLightsService;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_156

    .line 820
    :cond_141
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$300(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "light_turn_on_startTime"

    invoke-static {v1, v2, v9, v10}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 822
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # setter for: Lcom/android/server/lights/MiuiLightsService;->light_start_time:J
    invoke-static {v1, v9, v10}, Lcom/android/server/lights/MiuiLightsService;->access$5202(Lcom/android/server/lights/MiuiLightsService;J)J

    .line 824
    :cond_156
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateWorkState()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4600(Lcom/android/server/lights/MiuiLightsService;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateLightState()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5100(Lcom/android/server/lights/MiuiLightsService;)V

    goto :goto_1d1

    .line 826
    :cond_161
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->LIGHT_TURN_ON_ENDTIME_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 827
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v7, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "light_turn_on_endTime"

    const-wide/32 v9, 0x4ef6d80

    invoke-static {v7, v8, v9, v10, v6}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v6

    # setter for: Lcom/android/server/lights/MiuiLightsService;->light_end_time:J
    invoke-static {v1, v6, v7}, Lcom/android/server/lights/MiuiLightsService;->access$5302(Lcom/android/server/lights/MiuiLightsService;J)J

    .line 830
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->light_end_time:J
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5300(Lcom/android/server/lights/MiuiLightsService;)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_192

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->light_end_time:J
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5300(Lcom/android/server/lights/MiuiLightsService;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1a7

    .line 831
    :cond_192
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$300(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "light_turn_on_endTime"

    invoke-static {v1, v2, v9, v10}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 833
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # setter for: Lcom/android/server/lights/MiuiLightsService;->light_end_time:J
    invoke-static {v1, v9, v10}, Lcom/android/server/lights/MiuiLightsService;->access$5302(Lcom/android/server/lights/MiuiLightsService;J)J

    .line 835
    :cond_1a7
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateWorkState()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$4600(Lcom/android/server/lights/MiuiLightsService;)V

    .line 836
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateLightState()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$5100(Lcom/android/server/lights/MiuiLightsService;)V

    goto :goto_1d1

    .line 782
    :cond_1b2
    :goto_1b2
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 783
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d1

    .line 777
    :cond_1c4
    :goto_1c4
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 778
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 838
    :cond_1d1
    :goto_1d1
    return-void
.end method
