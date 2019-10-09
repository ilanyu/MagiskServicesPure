.class public final Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDamping:F

.field private mResponse:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mDamping:F

    .line 33
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mResponse:F

    .line 36
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;
    .registers 5

    .line 49
    new-instance v0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;

    iget v1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mDamping:F

    iget v2, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mResponse:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;-><init>(FFLcom/android/server/lights/interpolater/PhysicBasedInterpolator$1;)V

    return-object v0
.end method

.method public setDamping(F)Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;
    .registers 2
    .param p1, "damping"    # F

    .line 39
    iput p1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mDamping:F

    .line 40
    return-object p0
.end method

.method public setResponse(F)Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;
    .registers 2
    .param p1, "response"    # F

    .line 44
    iput p1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;->mResponse:F

    .line 45
    return-object p0
.end method
