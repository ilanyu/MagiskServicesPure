.class public Lcom/android/server/ExtraAlarmManagerService;
.super Ljava/lang/Object;
.source "ExtraAlarmManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recalculateWindowLength(Landroid/content/Context;IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)J
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .line 11
    return-wide p4
.end method
