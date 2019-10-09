.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;->f$0:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;->f$0:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-static {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->lambda$new$0(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V

    return-void
.end method
