.class Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuintEaseOutInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppTransitionInjector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/AppTransitionInjector$1;

    .line 554
    invoke-direct {p0}, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .line 557
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    move p1, v1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
