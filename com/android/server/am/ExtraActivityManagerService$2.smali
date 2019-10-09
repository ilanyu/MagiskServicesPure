.class Lcom/android/server/am/ExtraActivityManagerService$2;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ExtraActivityManagerService;->onSystemReady(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 853
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 854
    return-void
.end method
