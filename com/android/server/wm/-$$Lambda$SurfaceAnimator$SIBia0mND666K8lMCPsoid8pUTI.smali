.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$SIBia0mND666K8lMCPsoid8pUTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$SIBia0mND666K8lMCPsoid8pUTI;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$SIBia0mND666K8lMCPsoid8pUTI;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$SIBia0mND666K8lMCPsoid8pUTI;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$SIBia0mND666K8lMCPsoid8pUTI;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$0(Lcom/android/server/wm/SurfaceAnimator;Ljava/lang/Runnable;)V

    return-void
.end method
