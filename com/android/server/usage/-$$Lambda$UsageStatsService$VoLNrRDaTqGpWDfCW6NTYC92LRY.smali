.class public final synthetic Lcom/android/server/usage/-$$Lambda$UsageStatsService$VoLNrRDaTqGpWDfCW6NTYC92LRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$VoLNrRDaTqGpWDfCW6NTYC92LRY;->f$0:Lcom/android/server/usage/UsageStatsService;

    return-void
.end method


# virtual methods
.method public final onLimitReached(IIJJLandroid/app/PendingIntent;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$VoLNrRDaTqGpWDfCW6NTYC92LRY;->f$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->lambda$onStart$0(Lcom/android/server/usage/UsageStatsService;IIJJLandroid/app/PendingIntent;)V

    return-void
.end method
