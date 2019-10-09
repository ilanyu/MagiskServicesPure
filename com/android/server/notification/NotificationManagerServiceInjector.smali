.class public Lcom/android/server/notification/NotificationManagerServiceInjector;
.super Ljava/lang/Object;
.source "NotificationManagerServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onNotificationClick(IILjava/lang/String;Landroid/app/Notification;)V
    .registers 10
    .param p0, "callingUid"    # I
    .param p1, "callingPid"    # I
    .param p2, "postPackage"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;

    .line 18
    iget-object v0, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 19
    .local v0, "pi":Landroid/app/PendingIntent;
    if-nez v0, :cond_5

    .line 20
    return-void

    .line 22
    :cond_5
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 23
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 24
    .local v2, "time":J
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/notification/NotificationManagerServiceInjector$1;

    invoke-direct {v5, p2, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerServiceInjector$1;-><init>(Ljava/lang/String;Landroid/content/Intent;J)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method
