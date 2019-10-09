.class Lcom/android/server/power/PowerManagerServiceInjector$3;
.super Lcom/android/internal/app/IUidStateChangeCallback$Stub;
.source "PowerManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Lcom/android/internal/app/IUidStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChange(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 312
    if-lez p2, :cond_b

    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v0

    if-lez v0, :cond_b

    .line 313
    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->restoreScreenWakeLockDisabledState(I)V

    .line 315
    :cond_b
    return-void
.end method
