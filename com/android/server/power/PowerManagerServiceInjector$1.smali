.class Lcom/android/server/power/PowerManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerServiceInjector;->init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 63
    invoke-static {}, Lcom/android/server/UidStateHelper;->get()Lcom/android/server/UidStateHelper;

    move-result-object v0

    # setter for: Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceInjector;->access$002(Lcom/android/server/UidStateHelper;)Lcom/android/server/UidStateHelper;

    .line 69
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    # setter for: Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceInjector;->access$102(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 70
    return-void
.end method
