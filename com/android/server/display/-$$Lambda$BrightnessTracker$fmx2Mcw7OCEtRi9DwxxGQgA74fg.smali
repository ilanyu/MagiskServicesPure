.class public final synthetic Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;->f$0:Lcom/android/server/display/BrightnessTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;->f$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->lambda$scheduleWriteBrightnessTrackerState$0(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method
