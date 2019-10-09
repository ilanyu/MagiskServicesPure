.class public final synthetic Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/util/MultinetworkPolicyTracker;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;->f$0:Landroid/net/util/MultinetworkPolicyTracker;

    iput-object p2, p0, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;->f$0:Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v1, p0, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/net/util/MultinetworkPolicyTracker;->lambda$new$0(Landroid/net/util/MultinetworkPolicyTracker;Ljava/lang/Runnable;)V

    return-void
.end method
