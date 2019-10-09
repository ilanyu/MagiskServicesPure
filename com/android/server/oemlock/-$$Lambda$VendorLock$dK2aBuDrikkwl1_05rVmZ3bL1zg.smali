.class public final synthetic Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;


# instance fields
.field private final synthetic f$0:[Ljava/lang/Integer;

.field private final synthetic f$1:[Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;->f$0:[Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;->f$1:[Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onValues(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;->f$0:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;->f$1:[Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/oemlock/VendorLock;->lambda$isOemUnlockAllowedByDevice$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V

    return-void
.end method
