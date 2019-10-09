.class Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Downstream"
.end annotation


# instance fields
.field public final mode:I

.field public final subnetId:S

.field public final tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;IS)V
    .registers 4
    .param p1, "tism"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "mode"    # I
    .param p3, "subnetId"    # S

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 60
    iput p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    .line 61
    iput-short p3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    .line 62
    return-void
.end method
