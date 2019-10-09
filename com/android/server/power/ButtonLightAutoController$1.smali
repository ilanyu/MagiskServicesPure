.class Lcom/android/server/power/ButtonLightAutoController$1;
.super Ljava/lang/Object;
.source "ButtonLightAutoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightAutoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 81
    # invokes: Lcom/android/server/power/ButtonLightAutoController;->sSetNextStepBrightness()V
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->access$000()V

    .line 82
    return-void
.end method
