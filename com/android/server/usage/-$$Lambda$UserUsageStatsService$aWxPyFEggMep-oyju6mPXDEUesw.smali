.class public final synthetic Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;Landroid/util/ArraySet;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$0:J

    iput-wide p3, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$1:J

    iput-object p5, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$2:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$3:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 13

    iget-wide v0, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$0:J

    iget-wide v2, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$1:J

    iget-object v4, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;->f$3:Landroid/util/ArraySet;

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    return-void
.end method
