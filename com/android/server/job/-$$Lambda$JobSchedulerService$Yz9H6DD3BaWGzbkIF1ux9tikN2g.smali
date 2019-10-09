.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$Yz9H6DD3BaWGzbkIF1ux9tikN2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Yz9H6DD3BaWGzbkIF1ux9tikN2g;->f$0:Lcom/android/server/job/JobSchedulerService;

    return-void
.end method


# virtual methods
.method public final onUltraPowerSaverChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Yz9H6DD3BaWGzbkIF1ux9tikN2g;->f$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$onBootPhase$2(Lcom/android/server/job/JobSchedulerService;Z)V

    return-void
.end method
