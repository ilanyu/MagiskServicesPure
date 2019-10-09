.class final Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThreeDimensionalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 279
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 280
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 285
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "lastPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$900(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_a6

    goto :goto_4f

    :sswitch_18
    const-string/jumbo v2, "miui_3d_gesture_open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v4

    goto :goto_50

    :sswitch_23
    const-string/jumbo v2, "miui_3d_gesture_z"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x4

    goto :goto_50

    :sswitch_2e
    const-string/jumbo v2, "miui_3d_gesture_w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x2

    goto :goto_50

    :sswitch_39
    const-string/jumbo v2, "miui_3d_gesture_m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v3

    goto :goto_50

    :sswitch_44
    const-string/jumbo v2, "miui_3d_gesture_c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x3

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v2, -0x1

    :goto_50
    const/4 v5, -0x2

    packed-switch v2, :pswitch_data_bc

    goto :goto_a5

    .line 306
    :pswitch_55
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const-string/jumbo v3, "miui_3d_gesture_z"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$702(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a5

    .line 302
    :pswitch_62
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const-string/jumbo v3, "miui_3d_gesture_c"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureCLaunchApp:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$502(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    goto :goto_a5

    .line 298
    :pswitch_6f
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const-string/jumbo v3, "miui_3d_gesture_w"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$402(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    goto :goto_a5

    .line 294
    :pswitch_7c
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const-string/jumbo v3, "miui_3d_gesture_m"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$202(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    goto :goto_a5

    .line 289
    :pswitch_89
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const-string/jumbo v6, "miui_3d_gesture_open"

    invoke-static {v1, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_95

    goto :goto_96

    :cond_95
    move v3, v4

    :goto_96
    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z
    invoke-static {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$1002(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Z)Z

    .line 291
    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    iget-object v3, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z
    invoke-static {v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$1000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->enableGesture(Z)V

    .line 292
    nop

    .line 310
    :goto_a5
    return-void

    :sswitch_data_a6
    .sparse-switch
        -0x5e9ad292 -> :sswitch_44
        -0x5e9ad288 -> :sswitch_39
        -0x5e9ad27e -> :sswitch_2e
        -0x5e9ad27b -> :sswitch_23
        -0x42d726a1 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
        :pswitch_55
    .end packed-switch
.end method
