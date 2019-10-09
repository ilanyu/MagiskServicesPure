.class Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
.super Ljava/lang/Object;
.source "MiuiUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsageStatsItem"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field endTime:J

.field name:Ljava/lang/String;

.field startTime:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
