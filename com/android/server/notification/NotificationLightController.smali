.class public Lcom/android/server/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/NotificationRecord$Light;
    .registers 7
    .param p0, "service"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "ledNotification"    # Lcom/android/server/notification/NotificationRecord;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    const v1, 0x1060062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 18
    .local v0, "defaultColor":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V

    .line 19
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->ledARGB:I

    .line 20
    .local v1, "ledARGB":I
    if-nez v1, :cond_23

    .line 21
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    return-object v2

    .line 23
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->ledOnMS:I

    .line 24
    .local v2, "onMs":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 25
    .local v3, "offMs":I
    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    return-object v4
.end method

.method private static customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "colorKey"    # Ljava/lang/String;
    .param p3, "freqKey"    # Ljava/lang/String;
    .param p4, "defaultNotificationColor"    # I

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 68
    .local v0, "defaultFreq":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p2, p4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 72
    .local v1, "freq":I
    if-gez v1, :cond_22

    move v2, v0

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    invoke-static {v2}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v2

    .line 73
    .local v2, "offOn":[I
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    .line 74
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 75
    return-void
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V
    .registers 11
    .param p0, "service"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "defaultNotificationColor"    # I

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 32
    .local v0, "identify":J
    const/4 v2, 0x0

    .line 35
    .local v2, "customized":Z
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "light":Ljava/lang/String;
    const-string v5, "com.android.phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "com.android.server.telecom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_3f

    .line 41
    :cond_28
    const-string v5, "com.android.mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 42
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mms_breathing_light_color"

    const-string/jumbo v7, "mms_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    const/4 v2, 0x1

    .line 47
    .end local v4    # "light":Ljava/lang/String;
    :cond_3e
    goto :goto_b

    .line 37
    .restart local v4    # "light":Ljava/lang/String;
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "call_breathing_light_color"

    const-string v6, "call_breathing_light_freq"

    invoke-static {v3, p1, v5, v6, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void

    .line 49
    .end local v4    # "light":Ljava/lang/String;
    :cond_4b
    if-eqz v2, :cond_4e

    .line 50
    return-void

    .line 54
    :cond_4e
    iget v3, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5f

    .line 55
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "breathing_light_color"

    const-string v5, "breathing_light_freq"

    invoke-static {v3, p1, v4, v5, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    :cond_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .registers 4
    .param p0, "totalLength"    # I

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 83
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 84
    aget v1, v0, v2

    sub-int v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 85
    return-object v0
.end method
