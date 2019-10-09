.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 867
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "v"    # F

    .line 870
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    move p1, v1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
