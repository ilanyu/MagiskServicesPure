.class public Lcom/android/server/lights/interpolater/LinearInterpolater;
.super Ljava/lang/Object;
.source "LinearInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2
    .param p1, "input"    # F

    .line 8
    return p1
.end method
